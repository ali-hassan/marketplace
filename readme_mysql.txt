This is an export of the data of a Sharetribe marketplace.

This Marketplace export has been made at Tue May 11 12:43:29 UTC 2021 with Sharetribe Version 10.1.0
(commit d035cb1f3fdf39e072f8fd620844de988b129bd1). It is not guaranteed to work with any newer or older versions.

## How to load the SQL file

marketplace_export.sql can be loaded to any empty MySQL database. (Warning:
loading the sql file will delete existing tables in the database, so it is
recommended to use a completely empty database to load the file into.)

Below is an example command to load the sql file (you need to replace USERNAME
and DATABASENAME with the correct names of your database):

mysql -u USERNAME -p DATABASENAME < marketplace_export.sql

After the running the command, the DATABASENAME contains all the data of your
marketplace. Your database.yml file should point to that database.

## How to store the images

If images are included in this Marketplace export, you can now store them in two
alternative ways:

1. The default way is to store the images on the same server where you host the
   application. If you are using this approach you should run the script
   organize_s3_to_local.sh located in the images directory to organize the
   directories in way that local image storage requires. After that, copy the
   "system" directory from images to the "public" directory of your Sharetribe
   installation.

   If you had a hosted landing page enabled, set your Sharetribe Go
   configuration option 'clp_asset_url' to
   "system/landing_page/sites/imam-connect" in your config.yml file.

2. The other way of hosting the images is to use Amazon's S3 service. That can
   be enabled by adding S3 credentials to your config.yml file. If you use S3
   the directory structure is already correct. Only thing you need to do is to
   upload the structure to S3. For most operating systems there are separate
   applications available that may make upload easier.

   If you had a hosted landing page enabled, set your Sharetribe Go
   configuration option 'clp_asset_url' to match the S3 or CDN url of your
   images, including the 'landing_page/sites/imam-connect/' path.

After these steps you can start your server and you should see the marketplace
open with the same contents

NOTE: for security reasons we can't export the hashed passwords of users unless
you specifically request for them. They need to generate new passwords by using
the "password forgotten" link.
