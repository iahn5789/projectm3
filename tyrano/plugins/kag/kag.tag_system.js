tyrano.plugin.kag.tag.eval = {
    vital: ["exp"],
    pm: {
        exp: "",
        next: "true"
    },
    start: function(pm) {
        this.kag.evalScript(pm.exp);
        "true" == pm.next && this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.clearvar = {
    pm: {
        exp: ""
    },
    start: function(pm) {
        "" == pm.exp ? this.kag.clearVariable() : this.kag.evalScript("delete " + pm.exp);
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.clearsysvar = {
    start: function() {
        this.kag.variable.sf = {};
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.clearstack = {
    pm: {
        stack: ""
    },
    start: function(pm) {
        "" == pm.stack ? this.kag.stat.stack = {
            if: [],
            call: [],
            macro: []
        } : this.kag.stat.stack[pm.stack] = [];
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.close = {
    pm: {
        ask: "true"
    },
    start: function(pm) {
        var that = this;
        "true" == pm.ask ? $.confirm($.lang("exit_game"), (function() {
            that.close()
        }), (function() {
            that.kag.ftag.nextOrder()
        })) : this.close()
    },
    close: function() {
        window.close();
        void 0 !== navigator.app && navigator.app.exitApp();
        "undefined" != typeof require && void 0 !== require("nw.gui") && require("nw.gui").Window.get().close()
    }
};
tyrano.plugin.kag.tag.trace = {
    pm: {
        exp: ""
    },
    start: function(pm) {
        var val = this.kag.embScript(pm.exp);
        this.kag.log("trace出力：" + val);
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.body = {
    vital: [],
    pm: {
        bgimage: "",
        bgrepeat: "",
        bgcolor: "",
        bgcover: "false",
        scWidth: "",
        scHeight: ""
    },
    start: function(pm) {
        "" != pm.bgcolor && $("body").css("background-color", $.convertColor(pm.bgcolor));
        if ("" != pm.bgimage)
            if ("transparent" == pm.bgimage) {
                this.kag.layer.getLayer("base", "fore").hide();
                $("body").css("background-color", "transparent");
                $(".tyrano_base").css("background-color", "transparent")
            } else {
                var img_url = "";
                img_url = $.isHTTP(pm.bgimage) ? pm.bgimage : "./data/bgimage/" + pm.bgimage;
                $("body").css("background-image", 'url("' + img_url + '")')
            }
        "" != pm.bgrepeat && $("body").css("background-repeat", pm.bgrepeat);
        "true" == pm.bgcover && $("body").css("background-size", "cover");
        let flag_resize = !1;
        if ("" != pm.scWidth && parseInt(pm.scWidth) != parseInt(this.kag.config.scWidth)) {
            flag_resize = !0;
            this.kag.config.scWidth = parseInt(pm.scWidth);
            $(".tyrano_base").css("width", parseInt(pm.scWidth));
            $(".layer").css("width", parseInt(pm.scWidth))
        }
        if ("" != pm.scHeight && parseInt(pm.scHeight) != parseInt(this.kag.config.scHeight)) {
            flag_resize = !0;
            this.kag.config.scHeight = parseInt(pm.scHeight);
            $(".tyrano_base").css("height", parseInt(pm.scHeight));
            $(".layer").css("height", parseInt(pm.scHeight))
        }
        flag_resize && $(window).trigger("resize");
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.title = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        if ("" != pm.name) {
            this.kag.setTitle(pm.name);
            this.kag.ftag.nextOrder()
        }
    }
};
tyrano.plugin.kag.tag.iscript = {
    start: function(pm) {
        this.kag.stat.is_script = !0;
        this.kag.stat.buff_script = "";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.endscript = {
    pm: {
        stop: "false"
    },
    start: function(pm) {
        this.kag.stat.is_script = !1;
        this.kag.evalScript(this.kag.stat.buff_script);
        this.kag.stat.buff_script = "";
        "false" == pm.stop && this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.html = {
    pm: {
        layer: "",
        top: 0,
        left: 0,
        zindex:""
    },
    start: function(pm) {
        this.kag.stat.is_html = !0;
        this.kag.stat.map_html = {};
        this.kag.stat.map_html.buff_html = "";
        this.kag.stat.map_html.buff_pm = pm;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.endhtml = {
    start: function(pm) {
        var tpm = this.kag.stat.map_html.buff_pm,
            html = this.kag.stat.map_html.buff_html,
            html_obj = $("<div></div>");
        html_obj.css("position", "absolute");
        html_obj.css("top", tpm.top + "px");
        html_obj.css("left", tpm.left + "px");
        html_obj.css("z-index", tpm.zindex);
        $.setName(html_obj, tpm.name);
        html_obj.append($(html));
        if(tpm.layer != "")
        {
            var layer_name = $("."+ tpm.layer);
            layer_name.css("z-index", tpm.zindex);
            layer_name.append(html_obj);
            layer_name.show();
            console.log("test ......... : ", layer_name);
        }
        else{
            var layer_free = this.kag.layer.getFreeLayer();
            layer_free.css("z-index", tpm.zindex);
            layer_free.append(html_obj);
            layer_free.show();
        }
        this.kag.stat.is_html = !1;
        this.kag.stat.map_html = {};
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.particlehtml = {
    pm: {
        layer: "",
        zindex: 5,
        top: 0,
        left: 0
    },
    start: function(pm) {
        this.kag.stat.is_html = !0;
        this.kag.stat.map_html = {};
        this.kag.stat.map_html.buff_html = "";
        this.kag.stat.map_html.buff_pm = pm;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.particleendhtml = {
    start: function(pm) {
        var tpm = this.kag.stat.map_html.buff_pm,
            html = this.kag.stat.map_html.buff_html,
            html_obj = $("<div></div>");
        html_obj.css("position", "absolute");
        html_obj.css("top", tpm.top + "px");
        html_obj.css("left", tpm.left + "px");
        $.setName(html_obj, tpm.name);
        html_obj.append($(html));
        var layer_particle = this.kag.layer.getParticleLayer();
        layer_particle.css("z-index", tpm.zindex);
        layer_particle.append(html_obj);
        layer_particle.show();
        this.kag.stat.is_html = !1;
        this.kag.stat.map_html = {};
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.emb = {
    vital: ["exp"],
    pm: {
        exp: ""
    },
    log_join: "true",
    start: function(pm) {
        var val = "" + this.kag.embScript(pm.exp);
        this.kag.ftag.startTag("text", {
            val: val,
            backlog: "join"
        })
    }
};
tyrano.plugin.kag.tag.if = {
    vital: ["exp"],
    pm: {
        exp: ""
    },
    log_join: "true",
    start: function(pm) {
        if (this.kag.embScript(pm.exp)) {
            this.kag.pushStack("if", {
                bool: !0,
                deep: pm.deep_if
            });
            this.kag.ftag.nextOrder()
        } else {
            this.kag.pushStack("if", {
                bool: !1,
                deep: pm.deep_if
            });
            for (var i = 0; i < 2e3; i++) {
                if (1 == this.kag.ftag.nextOrderWithTag({
                        else: "",
                        elsif: "",
                        endif: ""
                    })) break
            }
            i > 1900 && this.kag.error("If文に誤りがあります")
        }
    }
};
tyrano.plugin.kag.tag.elsif = {
    vital: ["exp"],
    pm: {
        exp: ""
    },
    log_join: "true",
    start: function(pm) {
        if (0 == this.kag.getStack("if").bool && this.kag.embScript(pm.exp)) {
            this.kag.setStack("if", {
                bool: !0,
                deep: pm.deep_if
            });
            this.kag.ftag.nextOrder()
        } else {
            for (var i = 0; i < 2e3; i++) {
                if (1 == this.kag.ftag.nextOrderWithTag({
                        else: "",
                        elsif: "",
                        endif: ""
                    })) break
            }
            i > 1900 && this.kag.error("If文に誤りがあります")
        }
    }
};
tyrano.plugin.kag.tag.else = {
    pm: {
        exp: ""
    },
    log_join: "true",
    start: function(pm) {
        if (0 == this.kag.getStack("if").bool) {
            this.kag.setStack("if", {
                bool: !0,
                deep: pm.deep_if
            });
            this.kag.ftag.nextOrder()
        } else {
            for (var i = 0; i < 2e3; i++) {
                if (1 == this.kag.ftag.nextOrderWithTag({
                        endif: ""
                    })) break
            }
            i > 1900 && this.kag.error("If文に誤りがあります")
        }
    }
};
tyrano.plugin.kag.tag.endif = {
    log_join: "true",
    start: function() {
        this.kag.popStack("if");
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.call = {
    pm: {
        storage: null,
        target: null,
        countpage: !0,
        auto_next: "yes"
    },
    start: function(pm) {
        var back_pm = {};
        back_pm.index = this.kag.ftag.current_order_index;
        back_pm.storage = this.kag.stat.current_scenario;
        back_pm.auto_next = pm.auto_next;
        back_pm.caller = pm;
        this.kag.pushStack("call", back_pm);
        null == pm.target && null != pm.storage ? this.kag.ftag.nextOrderWithIndex(-1, pm.storage) : this.kag.ftag.nextOrderWithLabel(pm.target, pm.storage)
    }
};
tyrano.plugin.kag.tag.return = {
    start: function() {
        var pm = this.kag.getStack("call");
        if (pm.caller && pm.caller.storage && ("make.ks" == pm.caller.storage || pm.caller.storage == this.kag.stat.resizecall.storage) && 1 == this.kag.tmp.loading_make_ref) {
            this.kag.stat.flag_ref_page = !0;
            this.kag.tmp.loading_make_ref = !1
        }
        var auto_next = pm.auto_next;
        this.kag.popStack("call");
        this.kag.ftag.nextOrderWithIndex(pm.index, pm.storage, void 0, void 0, auto_next)
    }
};
tyrano.plugin.kag.tag.macro = {
    vital: ["name"],
    pm: {
        name: ""
    },
    log_join: "true",
    start: function(pm) {
        var index = this.kag.ftag.current_order_index,
            storage = this.kag.stat.current_scenario;
        this.kag.stat.map_macro[pm.name] = {
            storage: storage,
            index: index
        };
        this.kag.tmp.checking_macro = !0;
        for (var i = 0; i < 2e3; i++) {
            if (1 == this.kag.ftag.nextOrderWithTag({
                    endmacro: ""
                })) break
        }
        i > 1900 && this.kag.error("マクロが閉じていません")
    }
};
tyrano.plugin.kag.tag.endmacro = {
    log_join: "true",
    start: function(pm) {
        if (1 != this.kag.tmp.checking_macro) {
            var map_obj = this.kag.getStack("macro");
            if (map_obj) {
                this.kag.popStack("macro");
                this.kag.stat.mp = this.kag.getStack("macro");
                this.kag.ftag.nextOrderWithIndex(map_obj.index, map_obj.storage, !0)
            }
        } else {
            this.kag.tmp.checking_macro = !1;
            this.kag.ftag.nextOrder()
        }
    }
};
tyrano.plugin.kag.tag.erasemacro = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        delete this.kag.stat.map_macro[pm.name];
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.savesnap = {
    vital: ["title"],
    pm: {
        title: ""
    },
    start: function(pm) {
        var that = this;
        this.kag.menu.snapSave(pm.title, (function() {
            that.kag.ftag.nextOrder()
        }))
    }
};
tyrano.plugin.kag.tag.autosave = {
    vital: [],
    pm: {
        title: ""
    },
    start: function(pm) {
        var that = this;
        "" == pm.title && (pm.title = this.kag.stat.current_save_str);
        this.kag.menu.snapSave(pm.title, (function() {
            that.kag.menu.doSetAutoSave();
            that.kag.ftag.nextOrder()
        }))
    }
};
tyrano.plugin.kag.tag.autoload = {
    vital: [],
    pm: {
        title: ""
    },
    start: function(pm) {
        $.getStorage(this.kag.config.projectID + "_tyrano_auto_save", this.kag.config.configSave);
        this.kag.menu.loadAutoSave()
    }
};
tyrano.plugin.kag.tag.ignore = {
    vital: ["exp"],
    pm: {
        exp: ""
    },
    start: function(pm) {
        if (this.kag.embScript(pm.exp)) {
            for (var i = 0; i < 2e3; i++) {
                if (1 == this.kag.ftag.nextOrderWithTag({
                        endignore: ""
                    })) break
            }
            i > 1900 && this.kag.error("ignoreが閉じていません")
        } else this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.endignore = {
    start: function() {
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.edit = {
    vital: ["name"],
    pm: {
        name: "",
        length: "",
        initial: "",
        placeholder: "",
        color: "black",
        left: "0",
        top: "0",
        size: "20",
        face: "",
        width: "200",
        autocomplete: "false",
        height: "40",
        maxchars: "1000"
    },
    start: function(pm) {
        var j_text = $("<input class='text_box form' name='" + pm.name + "' type='text' value='' />");
        "" == pm.face && (pm.face = this.kag.stat.default_font.face);
        pm = $.minifyObject(pm);
        var new_style = {
            color: $.convertColor(pm.color),
            left: parseInt(pm.left),
            top: parseInt(pm.top),
            placeholder: pm.placeholder,
            width: pm.width,
            height: pm.height,
            "font-size": parseInt(pm.size),
            "font-family": pm.face
        };
        this.kag.event.addEventElement({
            tag: "edit",
            j_target: j_text,
            pm: pm
        });
        this.setEvent(j_text, pm);
        j_text.css(new_style);
        j_text.css("position", "absolute");
        j_text.attr("maxlength", pm.maxchars);
        "true" == pm.autocomplete ? j_text.attr("autocomplete", "on") : j_text.attr("autocomplete", "off");
        this.kag.layer.getFreeLayer().append(j_text);
        this.kag.layer.getFreeLayer().show();
        this.kag.ftag.nextOrder()
    },
    setEvent: function(j_text, pm) {
        TYRANO;
        var _pm = pm;
        ! function() {
            j_text.val(_pm.initial);
            j_text.click((function() {
                j_text.focus()
            }));
            j_text.on("keydown", (function(e) {
                e.stopPropagation()
            }))
        }()
    }
};
tyrano.plugin.kag.tag.preload = {
    vital: ["storage"],
    pm: {
        storage: "",
        wait: "false"
    },
    start: function(pm) {
        var that = this;
        "true" == pm.wait && this.kag.layer.hideEventLayer();
        var storage = pm.storage;
        if ("object" == typeof storage && storage.length > 0) {
            for (var sum = 0, i = 0; i < storage.length; i++) that.kag.preload(storage[i], (function() {
                sum++;
                if (storage.length == sum && "true" == pm.wait) {
                    that.kag.layer.showEventLayer();
                    that.kag.ftag.nextOrder()
                }
            }));
            if ("false" == pm.wait) {
                that.kag.layer.showEventLayer();
                that.kag.ftag.nextOrder()
            }
        } else {
            this.kag.preload(pm.storage, (function() {
                if ("true" == pm.wait) {
                    that.kag.layer.showEventLayer();
                    that.kag.ftag.nextOrder()
                }
            }));
            if ("false" == pm.wait) {
                that.kag.layer.showEventLayer();
                that.kag.ftag.nextOrder()
            }
        }
    }
};
tyrano.plugin.kag.tag.clearfix = {
    pm: {
        name: ""
    },
    start: function(pm) {
        "" != pm.name ? $(".fixlayer." + pm.name).remove() : $(".fixlayer").remove();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.commit = {
    start: function() {
        var that = this;
        this.kag.layer.getFreeLayer().find(".form").each((function() {
            var str = $(this).attr("name") + " = '" + $(this).val() + "'";
            that.kag.evalScript(str)
        }));
        that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.cursor = {
    vital: ["storage"],
    pm: {
        storage: "default"
    },
    start: function(pm) {
        this.kag.setCursor(pm.storage);
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.screen_full = {
    vital: [],
    pm: {},
    start: function(pm) {
        this.kag.menu.screenFull();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.sleepgame = {
    vital: [],
    pm: {
        storage: "",
        target: "",
        next: !0
    },
    start: function(pm) {
        var that = this,
            title = this.kag.stat.current_save_str;
        this.kag.menu.snapSave(title, (function() {
            that.kag.menu.setGameSleep(pm.next);
            that.kag.ftag.startTag("jump", pm)
        }), "false")
    }
};
tyrano.plugin.kag.tag.awakegame = {
    vital: [],
    pm: {
        variable_over: "true",
        bgm_over: "true"
    },
    start: function(pm) {
        if (null == this.kag.tmp.sleep_game) this.kag.ftag.nextOrder();
        else {
            var sleep_data = this.kag.tmp.sleep_game;
            "true" == pm.variable_over && (sleep_data.stat.f = this.kag.stat.f);
            var options = {
                bgm_over: pm.bgm_over
            };
            1 == this.kag.tmp.sleep_game_next && (options.auto_next = "yes");
            this.kag.menu.loadGameData($.extend(!0, {}, sleep_data), options);
            this.kag.tmp.sleep_game = null
        }
    }
};
tyrano.plugin.kag.tag.breakgame = {
    vital: [],
    pm: {},
    start: function(pm) {
        this.kag.tmp.sleep_game = null;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.dialog = {
    vital: [],
    pm: {
        name: "tf.dialog_value",
        type: "alert",
        text: "",
        storage: "",
        target: "",
        storage_cancel: "",
        target_cancel: "",
        label_ok: "OK",
        label_cancel: "Cancel"
    },
    start: function(pm) {
        var that = this;
        $(".remodal").find(".remodal-confirm").html(pm.label_ok);
        $(".remodal").find(".remodal-cancel").html(pm.label_cancel);
        if ("confirm" == pm.type) $.confirm(pm.text, (function() {
            that.finish(pm)
        }), (function() {
            pm.storage = pm.storage_cancel;
            pm.target = pm.target_cancel;
            that.finish(pm)
        }));
        else if ("input" == pm.type) {
            alertify.set({
                buttonFocus: "none",
                labels: {
                    ok: pm.label_ok,
                    cancel: pm.label_cancel
                }
            });
            alertify.prompt(pm.text, (function(flag, text) {
                if (flag) {
                    var str = pm.name + " = '" + text + "'";
                    that.kag.evalScript(str)
                } else {
                    pm.storage = pm.storage_cancel;
                    pm.target = pm.target_cancel
                }
                that.finish(pm)
            }));
            $(".alertify-text").on("keydown", (function(e) {
                e.stopPropagation()
            }))
        } else $.alert(pm.text, (function() {
            that.finish(pm)
        }))
    },
    finish: function(pm) {
        "" != pm.storage || "" != pm.target ? this.kag.ftag.startTag("jump", pm) : this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.plugin = {
    vital: ["name"],
    pm: {
        name: "",
        storage: "init.ks"
    },
    start: function(pm) {
        var name = pm.name;
        pm.storage = "../others/plugin/" + name + "/" + pm.storage;
        this.kag.stat.mp = pm;
        this.kag.ftag.startTag("call", pm)
    }
};
tyrano.plugin.kag.tag.sysview = {
    vital: ["type", "storage"],
    pm: {
        type: "",
        storage: ""
    },
    start: function(pm) {
        var type = pm.type,
            storage = pm.storage;
        this.kag.cache_html[type] && delete this.kag.cache_html[type];
        this.kag.stat.sysview[type] = storage;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.loadcss = {
    vital: ["file"],
    pm: {
        file: ""
    },
    start: function(pm) {
        var file = pm.file,
            style = '<link class="_tyrano_cssload_tag" rel="stylesheet" href="' + file + "?" + Math.floor(1e7 * Math.random()) + '">';
        $("head link:last").after(style);
        this.kag.stat.cssload[file] = !0;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.save_img = {
    vital: [],
    pm: {
        storage: "",
        folder: ""
    },
    start: function(pm) {
        pm.storage;
        var folder = "",
            storage_url = "";
        "" == pm.storage && (pm.storage = "default");
        folder = "" != pm.folder ? pm.folder : "bgimage";
        storage_url = $.isHTTP(pm.storage) ? pm.storage : "./data/" + folder + "/" + pm.storage;
        "default" == pm.storage && (storage_url = "");
        this.kag.stat.save_img = storage_url;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.nolog = {
    vital: [],
    pm: {},
    start: function(pm) {
        this.kag.stat.log_write = !1;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.endnolog = {
    vital: [],
    pm: {},
    start: function(pm) {
        this.kag.stat.log_write = !0;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.pushlog = {
    vital: ["text"],
    pm: {
        text: "",
        join: "false"
    },
    start: function(pm) {
        "true" == pm.join ? this.kag.pushBackLog(pm.text, "join") : this.kag.pushBackLog(pm.text, "add");
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.start_keyconfig = {
    pm: {},
    start: function(pm) {
        this.kag.stat.enable_keyconfig = !0;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.stop_keyconfig = {
    pm: {},
    start: function(pm) {
        this.kag.stat.enable_keyconfig = !1;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.apply_local_patch = {
    vital: ["file"],
    pm: {
        file: "",
        reload: "false"
    },
    start: function(pm) {
        var that = this;
        if ($.isNWJS() || $.isElectron()) {
            var patch_path = $.localFilePath() + "/" + pm.file;
            that.kag.applyPatch(patch_path, pm.reload, (function() {
                that.kag.ftag.nextOrder()
            }))
        } else that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.check_web_patch = {
    vital: ["url"],
    pm: {
        url: "",
        reload: "false"
    },
    start: function(pm) {
        var that = this;
        $.isNWJS() || $.isElectron() ? $.ajax({
            url: pm.url + "?" + Math.floor(1e6 * Math.random()),
            cache: !1,
            dataType: "json",
            success: function(json) {
                "object" != typeof json && (json = JSON.parse(json));
                that.checkPatch(json, pm)
            },
            error: function(e) {
                console.log(e);
                alert("file not found:" + pm.url)
            }
        }) : that.kag.ftag.nextOrder()
    },
    checkPatch: function(obj, pm) {
        var that = this;
        void 0 === this.kag.variable.sf._patch_version && this.kag.evalScript("sf._patch_version=" + this.kag.config.game_version);
        parseFloat(this.kag.variable.sf._patch_version) < parseFloat(obj.version) ? $.confirm("新しいアップデートが見つかりました。Ver:" + parseFloat(obj.version) + "「" + obj.message + "」<br />アップデートを行いますか？", (function() {
            alert("アップデートを行います。完了後、自動的にゲームは終了します。");
            var http = require("http"),
                fs = require("fs"),
                file = obj.file,
                url = $.getDirPath(pm.url) + file; - 1 != url.indexOf("https") && (http = require("https"));
            var patch_path = $.localFilePath();
            patch_path = patch_path + "/" + file;
            var outFile = fs.createWriteStream(patch_path);
            http.get(url, (function(res) {
                res.pipe(outFile);
                res.on("end", (function() {
                    outFile.close();
                    that.kag.evalScript("sf._patch_version=" + obj.version);
                    window.close()
                }))
            })).on("error", (function(err) {
                console.log("Error: ", err)
            }))
        }), (function() {
            that.kag.ftag.nextOrder()
        })) : that.kag.ftag.nextOrder();
        console.log(obj)
    }
};
tyrano.plugin.kag.tag.set_resizecall = {
    vital: ["storage"],
    pm: {
        storage: "",
        target: ""
    },
    start: function(pm) {
        this.kag.stat.resizecall.storage = pm.storage;
        this.kag.stat.resizecall.target = pm.target;
        this.kag.ftag.nextOrder()
    }
};