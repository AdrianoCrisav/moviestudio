.method public static ok(Landroid/app/Activity;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :chk

    const/4 v0, 0x1

    return v0

    :chk
    const/16 v1, 0x21

    if-lt v0, v1, :old

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :no

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :no

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :no

    :yes
    const/4 v0, 0x1

    return v0

    :old
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :yes

    :no
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/android/videoeditor/PermGate;
.super Ljava/lang/Object;
.source "PermGate.java"

.method public static ask(Landroid/app/Activity;)V
    .locals 4

    invoke-static {p0}, Lcom/android/videoeditor/PermGate;->ok(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :go

    return-void

    :go

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :old

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :old
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :done

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :done
    return-void
.end method
