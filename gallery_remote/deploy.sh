cvs -q update -d;

. ant zip;

version=`grep version= defaults.properties | awk -F= '{print $2}'`;
echo $version;

cp gallery_remote.zip /home/httpd/htdocs/gr-staging/gallery_remote_${version}.zip

. ant installer_macosx

cp GalleryRemote.${version}.MacOSX.NoVM.tgz /home/httpd/htdocs/gr-staging

lynx -dump -head http://jpmullan.com/galleryupdates/remote/gallery_remote_${version}.zip \
	| grep "HTTP/1.1 404" && \
	scp gallery_remote.zip paour@jpmullan.com:remote/gallery_remote_${version}.zip && \
	scp GalleryRemote.${version}.MacOSX.NoVM.tgz paour@jpmullan.com:remote/ && \
	. ant post
