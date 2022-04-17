Google Photo が /system/product/data-app/Photos にある場合、システムアプリ化します。  
また、config_systemGallery に Google Photoを指定することで、デフォルトのギャラリーアプリとして登録します。

これにより
```
cmd role add-role-holder android.app.role.SYSTEM_GALLERY com.google.android.apps.photos
```
を実行できるようになり、「1個の写真の変更を フォト に許可しますか?」「1枚の写真をゴミ箱に移動することを フォト に許可しますか?」といったダイアログが出ないようにできます。