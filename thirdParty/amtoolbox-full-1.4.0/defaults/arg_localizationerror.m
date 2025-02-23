function definput=arg_localizationerror(definput)

definput.flags.errorflag = {'','accL','precL','precLcentral',...
  'accP','precP','querr',...
  'accE','absaccE','precE','accE',...
  'absaccL','accabsL','accabsP','accPnoquerr','querr90','precPmedian',...
  'precPmedianlocal','precPnoquerr',...
  'rmsL','rmsPmedianlocal','rmsPmedian',...
  'querrMiddlebrooks','corrcoefL','corrcoefP','SCC',...
  'gainLstats','gainL','pVeridicalL','precLregress'...
  'sirpMacpherson2000','perMacpherson2003',...
  'gainPfront','gainPrear','gainP',...
  'slopePfront','slopePrear','slopeP',...
  'pVeridicalPfront','pVeridicalPrear','pVeridicalP',...
  'precPregressFront','precPregressRear','precPregress'};
definput.keyvals.f=[];       % regress structure of frontal hemisphere
definput.keyvals.r=[];       % regress structure of rear hemisphere


% This file is licensed unter the GNU General Public License (GPL) either 
% version 3 of the license, or any later version as published by the Free Software 
% Foundation. Details of the GPLv3 can be found in the AMT directory "licences" and 
% at <https://www.gnu.org/licenses/gpl-3.0.html>. 
% You can redistribute this file and/or modify it under the terms of the GPLv3. 
% This file is distributed without any warranty; without even the implied warranty 
% of merchantability or fitness for a particular purpose. 
%
%   Url: http://amtoolbox.org/amt-1.4.0/doc/defaults/arg_localizationerror.php



