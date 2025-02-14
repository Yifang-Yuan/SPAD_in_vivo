function okTDeviceInfo = getdeviceinfo(obj)

%GETSERIALNUMBER  Returns the device serial number string.
%  SN=GETSERIALNUMBER(OBJ) returns the serial number of the device.
%  This string is set at the factory and stored in EEPROM.
%
%  Copyright (c) 2005 Opal Kelly Incorporated
%  $Rev: 971 $ $Date: 2011-05-27 08:59:56 -0500 (Fri, 27 May 2011) $

% sn = calllib('okFrontPanel', 'okFrontPanel_GetSerialNumber', obj.ptr, '           ');
okTDeviceInfo = {};
calllib('okFrontPanel', 'okFrontPanel_GetDeviceInfo',okTDeviceInfo)
