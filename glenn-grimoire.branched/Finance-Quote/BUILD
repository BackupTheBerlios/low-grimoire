(
  #~ would like to use the below to have CPAN do all the work, but the
  #~ problem is in the VERSION, it would have to be dynamic.  I think
  #~ it would be too slow to have CPAN find it. (man CPAN)
  #~ perl -e 'use CPAN; CPAN::Shell->i("/Finance-Quote/");'
  #~ perl -e 'use CPAN; CPAN::Shell->install("Finance::Quote");'
  
  perl  Makefile.PL  &&
  make               &&
  prepare_install    &&
  make    install

) > $C_FIFO 2>&1
