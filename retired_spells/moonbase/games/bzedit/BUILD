(
 
  bzcat $SCRIPT_DIRECTORY/texture.patch.bz2     | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/element.patch.bz2     | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/object.patch.bz2      | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/box.patch.bz2         | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/pyramid.patch.bz2     | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/teleporter.patch.bz2  | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/link.patch.bz2        | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/base.patch.bz2        | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/ground.patch.bz2      | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/walls.patch.bz2       | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/world.patch.bz2       | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/model-tga.patch.bz2   | patch -p1  &&
  default_build

) > $C_FIFO 2>&1
