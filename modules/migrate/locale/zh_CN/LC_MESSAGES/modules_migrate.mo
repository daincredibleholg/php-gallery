��    o      �  �         `	  *   a	  (   �	  %   �	  �   �	    �
  
   �     �     �     �  D   �  �   D     @     N     T     [  "   c  	   �  	   �     �  |   �     )     =     K     Y  U   g     �  Y   �  2   6  
   i  �   t     �            a   #     �  �  �     6  '   C     k     �  A   �  ?   �       :   3     n     v  ;   �  	   �  D  �  A        U  �   b               (     6     F     S     h     ~     �     �     �     �     �  "   �      �  *     	   J     T     h     {    �  "   �     �     �  $   �               %     B     ^     t     �     �     �  @   �  >   �     #  %   +  =   Q  B   �  ?   �  -        @     S  -   h     �  	   �  1   �  \   �  
   5     @     P     Y     j  �   �  $   H  $   m  I   �  �  �  2   h  2   �  #   �  �   �    �      �!     �!     �!     �!  6   �!  �   ("  	   	#     #     #     !#     (#     ?#     L#     Y#  l   f#     �#     �#     �#     $  K   $     a$  ?   }$  6   �$     �$  �   %     �%  
   �%     �%  L   �%     �%  �  &  
   �'  (   �'  !   �'     (  n   (  n   �(     �(  5   )     J)     S)  7   `)     �)  ;  �)  D   �*     !+  �   .+     �+     �+     �+     �+     ,     ,     (,     <,     O,     \,     i,     v,     �,     �,     �,  #   �,     �,     �,     
-      -  �   9-     '.     >.     K.  +   [.     �.     �.     �.     �.     �.     �.     �.  	   	/     /  S   /  S   o/     �/     �/  t   �/  :   [0  =   �0  '   �0     �0     1  $   "1     G1  
   N1  1   Y1  I   �1  	   �1     �1  	   �1     �1     2  �   2  $   �2  *   �2  7   3             D      .   V   d       9   B   1   2   4   U   W   e       >   $   @                  '             5       f   
   8   ?   I                 	              j           0          3   [   X       n   <   %      k   N   ]   M                     :   G          F                    =   &   7       ;      )   _                   (         !          C   Z   S   *          O   /      c   \   T   6   m      K   o   `   h   "          J   L      ,       A   E       H   i   ^       l   Q   +   b      R                  a      g   Y   P   #              -    %sSummary%s was truncated for %sitem %d%s. %sTitle%s was truncated for %sitem %d%s. (Default to summary value if not set) <b>Note:</b> Before you import any data you should make sure your Gallery 1 is installed correctly by adding a photo through the Gallery 1 web interface.  Make sure you resolve any errors you see there first. Add the same <tt>.htaccess</tt> block in the Gallery1 albums directory if you also wish to redirect links to image files and album directories. Note that these redirects are not active until the G1 images are actually removed or moved. Omit the !-f line shown below to redirect anyway. Album Name Album Notes Album Title Albums to import: An album already exists with this name.  This album will be renamed. Any hidden albums or items will be imported with restricted view permissions. Activate the Hidden Items module before migration to import these as "hidden" which means they are invisible to guest users until accessed by the direct URL for those items. Base filename Blank Cancel Caption Character Encoding of Source Text: Check All Clear All Confirm Migration Copy all or part of an existing Gallery 1 installation into your Gallery 2.  It won't modify your Gallery 1 data in any way. Creating thumbnails Custom Field: Custom field: Custom fields Custom fields imported into item fields above will not be duplicated as custom fields Custom fields will be imported Custom fields will not be imported.  Activate Custom Fields module to enable this option. Default to same as summary if custom field not set Delete All Deleting map entries will cause old G1 URLs to produce HTTP Not Found errors instead of redirecting to G2 pages.  Delete all entries? Description Description: %s Destination: Do not create Gallery 2 custom fields for fields selected above for title, summary or description Download .htaccess file Edit or create a file called <tt>.htaccess</tt> in your Gallery1 directory and add the text shown below to the file. Remove G1 rewrite rules from an existing file. Redirects will also work in your Gallery2 directory if G2 is installed in the path where G1 used to be. However, if you also use the G2 URL Rewrite module then activate the G1 redirect rule in that module instead of using the block shown below. Encoding: %s Ensure the %s Apache module is enabled. Enter a custom field name Error importing %s Error while importing %d album. Errors while importing %d albums. Error while importing %d user. Errors while importing %d users. Example: /var/www/albums G1 URL redirect. Use only if G2 is installed where G1 used G1 path G1-&gt;G2 Mapping G1->G2 mappings will be recorded for use in URL Redirection Gallery 1 Gallery 2 has the following fields for all items and albums: title, summary text shown with thumbnails and description text shown in item or album view. G1 albums already have these three items (though the names of summary and description are reversed). G1 items have only a filename and caption. For items imported into G2: Gallery can redirect old Gallery1 URLs to the new Gallery2 pages. Hidden Items If G2 is installed in the path where G1 used to exist, you will need to remove the G1 file "gallery_remote2.php" file before you can use Gallery Remote to upload images to G2. Import Import %s now. Import Albums Import Complete Import Users Import custom fields Import from Gallery 1 Import more data Imported %s Importing Photos Importing Users Invert Selection Item captions Item fields will be imported from: Map entries deleted successfully Migrate your Gallery 1 albums to Gallery 2 Migration No albums imported. No available users No users imported. Normally Gallery will generate thumbnails the first time you look at them, then save them for subsequent views.  If you check this box, we'll create the thumbnails at migration time.  Migration will take longer but the first time you view an album will go much faster. Path to Gallery 1 albums directory Prepare Import Recently Used Paths Record G1->G2 mappings during import Select Select Albums and Users Select the albums to migrate Select the users to migrate Set description from: Set summary from: Set title from: Set: Source: Successfully imported %d album. Successfully imported %d albums. Successfully imported %d user. Successfully imported %d users. Summary The path that you entered is invalid. There is one G1->G2 map entry There are %d G1->G2 map entries These users are already in your gallery, and will not be imported: This album has an illegal name and will be renamed to <i>%s</i> This album's owner (%s) hasn't been imported. Thumbnail %d of %d Thumbnail generation Thumbnails will be generated during migration Title Title: %s To enable URL Redirection under Apache webserver: Top level albums and albums whose parents are not selected will be imported into this album: Truncated: URL Redirection Username Users to import: You did not enter a path. You don't have any Graphics Toolkit activated to handle JPEG images.  If you import now, you will not have any thumbnails.  Visit the <a href="%s">Modules</a> page to activate a Graphics Toolkit. You must choose something to import! You must specify a custom field name Your Gallery 1 will be converted from this character encoding into UTF-8: Project-Id-Version: Gallery: Migration 1.0.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2005-03-28 14:00+0800
PO-Revision-Date: 2006-03-10 12:12+0800
Last-Translator: Lyric <lyric@lyricli.com>
Language-Team: Chinese Simplified <gallery-devel@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 %3$s项目%4$d%5$s的%1$s摘要%2$s被删节了。 %3$s项目%4$d%5$s的%1$s主题%2$s被删节了。 (如未设定默认与摘要相同) <b>注意：</b>在导入任何资料之前你应该先通过 Gallery 1 的网页界面加入一个照片以确认 Gallery 1 安装正常。确定解决了任何错误。 如果你希望重定位图片文件或相册目录的链接，请在 Gallery 1 相册目录中加上一样的 <tt>.htaccess</tt> 区块。请注意这些重导键接在 G1 的图片没有真的删除或移动之前是没有作用的。把下面显示的 !-f 行省略以强制转向。 相册名称 相册注释 相册标题 导入相册: 同名相册已经存在。此相册将被重命名。 任何隐藏相册或者项目会按照限制查看权限导入。在迁移前激活隐藏项目模块会将这些项目导入为[隐藏]项目，意味着访客不会看到这些项目，除非使用直接的网址链接。 文件名 空白 取消 标题 原文本字符编码: 选择所有 清除所有 确认迁移 将现有 Gallery 1 的全部或部分文件拷贝到 Gallery 2 中。完全不会修改 Gallery 1 数据。 建立缩略图 自定义字段: 自定义字段: 自定义字段 导入到上面项目字段的自定义字段不会复制为自定义字段 自定义字段将被导入 自定义字段已经导入。请激活自定义字段模块。 如果自定义字段为设置，默认与摘要相同 删除所有 删除映射条目会导致图库1网址产生HTTP未找到错误，而不是重定向到图库2页面。删除所有条目吗？ 描述 描述: %s 目标位置: 不要为上面的 Gallery2 主题，摘要，描述创建自定义字段。 下载 .htaccess 文件 请在G1目录中编辑或新建一个名为<tt>.htaccess</tt>的文件，并将下面显示的文本添加到该文件中。从现有文件中删除所有G1重写规则。重定向功能仍旧可以工作在 Gallery2 目录下，如果G2安装在原G1的路径位置，这将也作用于图库2目录。但是如果使用 G2 的URL重写模块，则请把 G1 的重定向规则加在模块中，而不要使用下面的文字。 编码: %s 请确认 %s Apache模块已经开启。 输入一个自定义字段名称 导入 %s 错误 导入%d 个相册时出现错误。 导入%d 个相册时出现错误。 导入%d 个相册时出现错误。 导入%d 位用户时出现错误。 导入%d 位用户时出现错误。 导入%d 位用户时出现错误。 例子：/var/www/albums G1 URL 重定向。仅仅在G2安装在G1的目录中 G1路径 G1->G2映射 图库1->图库2映射将被记录用于网址重定向 图库1 图库2对所有项目和相册使用下列字段：标题、和缩略图一同显示的摘要文字以及和项目或相册一同显示的描述文字。图库1相册已包含这3个字段。（虽然摘要和描述的名称是相反的）图库1项目只有一个文件名和标题。要导入图库2中的项目: 图库可以重定向原来的图库1网址到新的图库2页面。 隐藏项目 如果图库2被安装在图库1存在的目录中，在使用图库遥控上传图片到图库2以前，您必须删除图库1的 "gallery_remote2.php" 文件。 导入 马上导入 %s。 导入相册 导入完成 导入用户 导入自定义字段 从图库1中导入 导入更多数据 已导入 %s 导入照片 导入用户 反向选择 项目标题 项目字段将被导入自: 映射条目删除成功 迁移您的图库1相册到图库2 迁移 没有相册被导入。 没有可用的用户 没有用户被导入。 一般情况下，图库将在您第一次查看时生成缩略图，然后保存缩略图已被后续浏览。如果您选中此框，缩略图将在迁移时建立。迁移会时间稍长但您第一次查看相册时速度将更快。 Gallery 1 相册目录 准备导入 原使用路径 在导入时记录图库1->图库2的映射 选择 选择相册和用户 选择要迁移的相册 选择要迁移的用户 设定描述自: 设定摘要自: 设定标题自: 设定： 来源: 导入%d 个相册成功。 导入%d 个相册成功。 导入%d 个相册成功。 导入%d 位用户成功。 导入%d 位用户成功。 导入%d 位用户成功。 摘要 您输入的路径无效。 有 %d 条图库1->图库2映射条目 有 %d 条图库1->图库2映射条目 有 %d 条图库1->图库2映射条目 这些用户已经存在与图库中，将不会被导入: 此相册有不合法的名字，将被重命名为 <i>%s</i> 此相册所有者 (%s) 未被导入。 缩略图 %d，共 %d 缩略图生成 缩略图将在迁移过程中建立 标题 标题: %s 在Apache服务器上开启网址重定向功能: 顶层相册和其未被选择的上层相册将被导入到此相册中: 删节： 网址重定向 用户名 导入用户: 您未输入路径。 您没有开启任何可处理JPEG的图形工具。如果您现在导入，将不会生成任何缩略图。请访问<a href="%s">模块</a>页面开启一种图形工具。 你必须选择要导入的内容！ 你必须指定一个自定义字段名称 您的图库1将会被从此字符编码转换到UTF-8: 