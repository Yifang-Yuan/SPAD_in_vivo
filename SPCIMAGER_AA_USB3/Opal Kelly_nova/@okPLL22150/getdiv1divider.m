function y = getdiv1divider(obj)

%GETDIV1DIVIDER  Get the divider 1 divider value.
%  Y=GETDIV1DIVIDER(OBJ) returns the divider 1 divider in Y.
%
%  Copyright (c) 2005 Opal Kelly Incorporated
%  $Rev: 209 $ $Date: 2005-10-13 19:40:13 -0700 (Thu, 13 Oct 2005) $

y = calllib('okFrontPanel', 'okPLL22150_GetDiv1Divider', obj.ptr);
