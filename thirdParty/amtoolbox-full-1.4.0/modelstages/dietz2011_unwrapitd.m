function itd = dietz2011_unwrapitd(itd,ild,f_inst,tr)
%DIETZ2011_UNWRAPITD unwraps the given itd using the sign of the corresponding ild
%   Usage: itd = dietz2011_unwrapitd(itd,ild,f_inst,tr)
%
%   Input parameters:
%       itd    : itd to unwrap
%       ild    : corresponding ild value
%       f_inst : instantaneous frequency
%       tr     : only apply the unwrap mechanism for ild greater than the
%                threshold tr, because for values near 0 it could be wrong
%                (default: 2.5)
%
%   Output parameters:
%       itd    : unwrapped itd
%
%   DIETZ2011_UNWRAPITD(itd,ild,f_inst,tr) unwraps the given itd using the sign of the
%   corresponding ild value. Unwrapping means, that the ild value is used to
%   decide to which direction the itd belongs, which can be unclear for
%   large values, because of the pi limit (see Dietz et al. 2011, Fig. 2).
%
%   See also: dietz2011, wierstorf2013
%
%   References:
%     M. Dietz, S. D. Ewert, and V. Hohmann. Auditory model based direction
%     estimation of concurrent speakers from binaural signals. Speech
%     Communication, 53(5):592--605, 2011. [1]http ]
%     
%     H. Wierstorf, A. Raake, and S. Spors. Binaural assessment of
%     multi-channel reproduction. In J. Blauert, editor, The technology of
%     binaural listening, chapter 10. Springer, Berlin--Heidelberg--New York
%     NY, 2013.
%     
%     References
%     
%     1. http://www.sciencedirect.com/science/article/pii/S016763931000097X
%     
%
%   Url: http://amtoolbox.org/amt-1.4.0/doc/modelstages/dietz2011_unwrapitd.php


%   #StatusDoc: Perfect
%   #StatusCode: Perfect
%   #Verification: Verified
%   #Requirements: M-Signal
%   #Author: Tobias Peters (2002)
%   #Author: Mathias Dietz (2006-2009)
%   #Author: Martin Klein-Hennig (2011)
%   #Author: Martin Klein-Hennig 
%   #Author: Hagen Wierstorf (2013): for AMT 

% This file is licensed unter the GNU General Public License (GPL) either 
% version 3 of the license, or any later version as published by the Free Software 
% Foundation. Details of the GPLv3 can be found in the AMT directory "licences" and 
% at <https://www.gnu.org/licenses/gpl-3.0.html>. 
% You can redistribute this file and/or modify it under the terms of the GPLv3. 
% This file is distributed without any warranty; without even the implied warranty 
% of merchantability or fitness for a particular purpose. 

%% ===== Checking of input parameters ===================================
nargmin = 3;
nargmax = 4;
narginchk(nargmin,nargmax);
if nargin==3
    tr = 2.5;
end


%% ===== Calculation ====================================================
itd = itd + ...
    round( ... % this will be -1,0,1
        0.4*sign(round(ild/2 / (abs(tr)+1e-9))) - 0.4*sign(itd) ) ...
    ./ f_inst;


