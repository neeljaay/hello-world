#!/usr/bin/perl
use warnings;
use strict;

my $filename;
my $filetype;
my $filesize;
my $numfiles;
my $totalfilesize;

for my $filename ( glob("*"))
{
   if ( -f $filename )
   {
      if ( $filename =~ /.+\.([^.]+)$/ )
      {
         $filetype = '.' . $1;
      }
      else
      {
         $filetype = '<no type>';
      }

   $filesize = -s $filename;
       $totalfilesize += -s $filename;
       $numfiles += 1;
       
       
   printf(" filename=%s filetype=%s filesize=%d\n", $filename, $filetype, $filesize);
   

   }


}

printf(" number of files=%d total filesize=%d\n", $numfiles, $totalfilesize);