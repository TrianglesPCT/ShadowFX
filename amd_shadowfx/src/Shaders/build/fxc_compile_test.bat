SET FXC_COMPILE_UNIFORM_PS=fxc.exe /nologo ..\AMD_ShadowFX.hlsl /T ps_5_0 /O1 /E shadowFiltering /DAMD_SHADOWFX_FILTERING=0  /DAMD_SHADOWFX_TEXTURE_TYPE=1 /DAMD_SHADOWFX_EXECUTION=1
SET FXC_COMPILE_CONTACT_PS=fxc.exe /nologo ..\AMD_ShadowFX.hlsl /T ps_5_0 /O1 /E shadowFiltering /DAMD_SHADOWFX_FILTERING=1  /DAMD_SHADOWFX_TEXTURE_TYPE=1 /DAMD_SHADOWFX_EXECUTION=1
SET FXC_COMPILE_POINT_PS=fxc.exe   /nologo ..\AMD_ShadowFX.hlsl /T ps_5_0 /O1 /E shadowFiltering /DAMD_SHADOWFX_FILTERING=10 /DAMD_SHADOWFX_TEXTURE_TYPE=1 /DAMD_SHADOWFX_EXECUTION=1

SET ABRV=PS_SF_T2DA_POINT

%FXC_COMPILE_POINT_PS% /Fh ..\inc\%ABRV%_NORMAL_OPTION_NONE.inc                                                         /Vn %ABRV%_NORMAL_OPTION_NONE_Data                                                      /DAMD_SHADOWFX_FILTER_SIZE=7  /DAMD_SHADOWFX_NORMAL_OPTION=0 /DAMD_SHADOWFX_TAP_TYPE=0 /DAMD_SHADOWFX_TEXTURE_FETCH=0
%FXC_COMPILE_POINT_PS% /Fh ..\inc\%ABRV%_NORMAL_OPTION_CALC_FROM_DEPTH.inc                                              /Vn %ABRV%_NORMAL_OPTION_CALC_FROM_DEPTH_Data                                           /DAMD_SHADOWFX_FILTER_SIZE=7  /DAMD_SHADOWFX_NORMAL_OPTION=1 /DAMD_SHADOWFX_TAP_TYPE=0 /DAMD_SHADOWFX_TEXTURE_FETCH=0
%FXC_COMPILE_POINT_PS% /Fh ..\inc\%ABRV%_NORMAL_OPTION_READ_FROM_SRV.inc                                                /Vn %ABRV%_NORMAL_OPTION_READ_FROM_SRV_Data                                             /DAMD_SHADOWFX_FILTER_SIZE=7  /DAMD_SHADOWFX_NORMAL_OPTION=2 /DAMD_SHADOWFX_TAP_TYPE=0 /DAMD_SHADOWFX_TEXTURE_FETCH=0

