=============================
iPhone centered rotation test
=============================

:author: Grzegorz Adam Hankiewicz <gradha@elhaso.com>

.. contents::

.. section-numbering::

.. raw:: pdf

   PageBreak oneColumn

General
=======

While writting code for the iPhone/iPad, it is best to create views in such a
way that you have to maintain the minimum amount of code necessary for the
application to work. This usually means trying to leverage the existing
automatic rotation behaviours for view controllers.

However I've found that sometimes setting the correct rotation mask/properties
is not enough for the views to work as expected, especially when you try to
construct the views from code and not using the Interface Builder, and I'm
tired of *nudging* them to work correctly.

What you have here is a small test case of a navigation based application. The
application opens with a table and a single cell. Pressing the cell will push a
custom view, created by hand, which contains two rectangles: one aligned on the
top left corner, one centered on the view. When you enter this custom view, the
red rectangle is centered, and if you rotate the device, it rotates too,
staying correctly in the middle.

Well, what happens if you push the view while *not* in portrait mode? Here's
the weird thing: it doesn't center any more on the same point. Depending on
your initial device orientation before pushing the view, the red rectangle will
center on a different point.

What am I doing wrong? I've browsed through documentation and archives and I
haven't found anything similar. Which means I've hit a genuine bug in my brain.
Please enlighten me!


Source code
===========

Requirements
------------

The source code uses SDK 4.2 and deploys on 3.x. It has not been tested on
iPads, only on iPhones ranging from 3.1.2 to 4.3 firmware.


License
-------

This buggy code is available under the 
BSD license (http://www.opensource.org/licenses/bsd-license.php).

Copyright (c) 2011, Grzegorz Adam Hankiewicz.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

* Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.
* Neither the name of Electric Hands Software nor the names of its
  contributors may be used to endorse or promote products derived
  from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
