[_tb_system_call storage=system/_Test_Wait_Call_01.ks]

*story

[tb_start_tyrano_code]
[anim name="workspace" top=-700 time=300 wait=true effect=easeInQuad]
[image layer=2 width=1080 height=638 left=464 top=-700 page=fore visible=true name=storyboard storage = ../image/New_GUI/Test_UI/UI_Storyboard_01.png ]
[anim name="storyboard" top=0 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
*workspace

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=300 wait=true effect=easeInQuad]
[image layer=2 width=850 height=559 left=580 top=-700 page=fore visible=true name=workspace storage = ../image/New_GUI/Test_UI/UI_Work_01.png ]
[anim name="workspace" top=0 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
*gift

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[return  ]
*labelkang

[tb_start_tyrano_code]
[image layer=2 width=301 height=197 left=1602 top=-700 page=fore visible=true name=labelkang storage = ../image/New_GUI/Test_UI/UI_Label_Kang_01.png ]
[anim name="labelkang" top=0 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
