function ret = runApp()
  [dir, name, ext] = fileparts( mfilename('fullpathext') );
  global _secod-order-dynamicsBasePath = dir;
  global _secod-order-dynamicsImgPath = [dir filesep() 'img'];
  addpath([dir filesep() "libs" ]);
  addpath([dir filesep() "fcn" ]);
  addpath([dir filesep() "wnd" ]);
  waitfor(layout().figure);
end
