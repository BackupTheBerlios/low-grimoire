(

  mv   texture.c texture.c.original                                   &&
  cat  texture.c.original                                             |
  sed  "s/ast_tex0.ppm/\/var\/lib\/asteroids3D\/ast_tex0.ppm/"        |
  sed  "s/ast_tex1.ppm/\/var\/lib\/asteroids3D\/ast_tex1.ppm/"        |
  sed  "s/ast_tex2.ppm/\/var\/lib\/asteroids3D\/ast_tex2.ppm/"        |
  sed  "s/ast_tex3.ppm/\/var\/lib\/asteroids3D\/ast_tex3.ppm/"        |
  sed  "s/ast_tex4.ppm/\/var\/lib\/asteroids3D\/ast_tex4.ppm/"        |
  sed  "s/ast_tex5.ppm/\/var\/lib\/asteroids3D\/ast_tex5.ppm/"        |
  sed  "s/nebula_tex0.ppm/\/var\/lib\/asteroids3D\/nebula_tex0.ppm/"  |
  sed  "s/nebula_tex1.ppm/\/var\/lib\/asteroids3D\/nebula_tex1.ppm/"  |
  sed  "s/nebula_tex2.ppm/\/var\/lib\/asteroids3D\/nebula_tex2.ppm/"  |
  sed  "s/torp_tex0.ppm/\/var\/lib\/asteroids3D\/torp_tex0.ppm/" > texture.c

  mv   sound.c sound.c.original                                       &&
  cat  sound.c.original                                               |
  sed  "s/ast_snd0.ub/\/var\/lib\/asteroids3D\/ast_snd0.ub/"          |
  sed  "s/ast_snd1.ub/\/var\/lib\/asteroids3D\/ast_snd1.ub/"          |
  sed  "s/ast_snd2.ub/\/var\/lib\/asteroids3D\/ast_snd2.ub/"          |
  sed  "s/ast_snd3.ub/\/var\/lib\/asteroids3D\/ast_snd3.ub/"          |
  sed  "s/ast_snd4.ub/\/var\/lib\/asteroids3D\/ast_snd4.ub/"          |
  sed  "s/ast_snd5.ub/\/var\/lib\/asteroids3D\/ast_snd5.ub/"          |
  sed  "s/coll_snd.ub/\/var\/lib\/asteroids3D\/coll_snd.ub/"          |
  sed  "s/ta_snd.ub/\/var\/lib\/asteroids3D\/ta_snd.ub/"              |
  sed  "s/tf_snd.ub/\/var\/lib\/asteroids3D\/tf_snd.ub/"  >  sound.c

  make                                                                &&
  prepare_install                                                     &&
  cp  asteroids3D /usr/games                                          &&
  if  [ ! -d /var/lib/asteroids3D ];  then
    mkdir /var/lib/asteroids3D
  fi                                                                  &&
  cp  *.ppm  /var/lib/asteroids3D                                     &&
  cp  *.ub   /var/lib/asteroids3D

) > $C_FIFO 2>&1
