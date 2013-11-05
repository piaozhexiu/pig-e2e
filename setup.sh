yum -y install make gcc

# install IPC-Run
wget http://search.cpan.org/CPAN/authors/id/T/TO/TODDR/IPC-Run-0.92.tar.gz
tar -xf IPC-Run-0.92.tar.gz
cd IPC-Run-0.92
perl Makefile.PL
make install
cd ..

# install ForkManager
wget http://search.cpan.org/CPAN/authors/id/S/SZ/SZABGAB/Parallel-ForkManager-1.03.tar.gz
tar -xf Parallel-ForkManager-1.03.tar.gz
cd Parallel-ForkManager-1.03
perl Makefile.PL
make install
cd ..

# install DBI
wget http://search.cpan.org/CPAN/authors/id/T/TI/TIMB/DBI-1.625.tar.gz
tar -xf DBI-1.625.tar.gz
cd DBI-1.625
perl Makefile.PL
make install
cd ..

# install Apache Ant
wget http://apache.mirrors.pair.com//ant/binaries/apache-ant-1.9.2-bin.tar.gz
tar -xf apache-ant-1.9.2-bin.tar.gz
