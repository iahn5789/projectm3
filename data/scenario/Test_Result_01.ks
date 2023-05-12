[_tb_system_call storage=system/_Test_Result_01.ks]

*test_result

[cm  ]
[tb_start_tyrano_code]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_Result_Bgi_01.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*star"  ]
[tb_start_tyrano_code]
[button name="next" storage="Chapter03_School_Club_01.ks" target="chapter03_01" graphic="../image/New_GUI/Test_In_UI/Quiz_End_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Quiz_End_Bt_02.png" width="618" height="107" x="655" y="1100" ]
[anim name=next top=936 time=1000 ]
[_tb_end_tyrano_code]

[s  ]
*star

[jump  storage="Test_Result_01.ks"  target="*star_on_01"  cond="f.testResult==1"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_02"  cond="f.testResult==2"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_03"  cond="f.testResult==3"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_04"  cond="f.testResult==4"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_05"  cond="f.testResult==5"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_06"  cond="f.testResult==6"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_07"  cond="f.testResult==7"  ]
[s  ]
*star_on_01

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_02

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_03

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_04

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_05

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_06

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_07

[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
