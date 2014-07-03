.class public final Lcom/chukong/cocosplay/client/CocosUtils;
.super Ljava/lang/Object;
.source "CocosUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuABI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 82
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 83
    .local v1, CPU_ABI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, CPU_ABI2:Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    .line 86
    :try_start_0
    const-class v4, Landroid/os/Build;

    const-string v5, "CPU_ABI2"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 92
    .end local v1           #CPU_ABI:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 87
    .restart local v1       #CPU_ABI:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 88
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    move-object v1, v2

    .line 92
    goto :goto_1
.end method

.method private static getLibPathByCpuABI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cpuAbi"

    .prologue
    .line 101
    const-string v0, "armeabi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "lib/armeabi/"

    .line 108
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const-string v0, "armeabi-v7a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "lib/armeabi-v7a/"

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "x86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "lib/x86/"

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "lib/armeabi/"

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFragmentActivity(Ljava/lang/String;)Z
    .locals 4
    .parameter "activityName"

    .prologue
    .line 118
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, cls:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Landroid/support/v4/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #obj:Ljava/lang/Object;
    :goto_0
    return v3

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static unZipLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "apkPath"
    .parameter "libName"
    .parameter "outFileFullPath"

    .prologue
    .line 30
    const/4 v7, 0x0

    .line 31
    .local v7, os:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 32
    .local v4, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 34
    .local v9, zipFile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .local v10, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosUtils;->getCpuABI()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, cpuABI:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/chukong/cocosplay/client/CocosUtils;->getLibPathByCpuABI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, libFullPath:Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 39
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 40
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 41
    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 42
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 43
    .local v0, buf:[B
    const/4 v5, -0x1

    .line 44
    .local v5, length:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 47
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    invoke-static {v4}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/InputStream;)V

    .line 71
    invoke-static {v8}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/OutputStream;)V

    .line 72
    invoke-static {v10}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/util/zip/ZipFile;)V

    .line 48
    const/4 v11, 0x1

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    move-object v7, v8

    .line 74
    .end local v0           #buf:[B
    .end local v1           #cpuABI:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #length:I
    .end local v6           #libFullPath:Ljava/lang/String;
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :goto_1
    return v11

    .line 45
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v0       #buf:[B
    .restart local v1       #cpuABI:Ljava/lang/String;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #length:I
    .restart local v6       #libFullPath:Ljava/lang/String;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :cond_0
    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v8, v0, v11, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 67
    .end local v0           #buf:[B
    .end local v5           #length:I
    :catch_0
    move-exception v2

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    move-object v7, v8

    .line 68
    .end local v1           #cpuABI:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #libFullPath:Ljava/lang/String;
    .end local v8           #os:Ljava/io/OutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v7       #os:Ljava/io/OutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    invoke-static {v4}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/InputStream;)V

    .line 71
    invoke-static {v7}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/OutputStream;)V

    .line 72
    invoke-static {v9}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/util/zip/ZipFile;)V

    .line 74
    const/4 v11, 0x0

    goto :goto_1

    .line 52
    .end local v2           #e:Ljava/lang/Exception;
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #cpuABI:Ljava/lang/String;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #libFullPath:Ljava/lang/String;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "lib/armeabi-v7a/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {v10, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 56
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :try_start_6
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 57
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 58
    .restart local v0       #buf:[B
    const/4 v5, -0x1

    .line 59
    .restart local v5       #length:I
    :goto_3
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v11, -0x1

    if-ne v5, v11, :cond_2

    .line 62
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 70
    invoke-static {v4}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/InputStream;)V

    .line 71
    invoke-static {v8}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/OutputStream;)V

    .line 72
    invoke-static {v10}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/util/zip/ZipFile;)V

    .line 63
    const/4 v11, 0x1

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_1

    .line 60
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    const/4 v11, 0x0

    :try_start_7
    invoke-virtual {v8, v0, v11, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 69
    .end local v0           #buf:[B
    .end local v5           #length:I
    :catchall_0
    move-exception v11

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    move-object v7, v8

    .line 70
    .end local v1           #cpuABI:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #libFullPath:Ljava/lang/String;
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :goto_4
    invoke-static {v4}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/InputStream;)V

    .line 71
    invoke-static {v7}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/OutputStream;)V

    .line 72
    invoke-static {v9}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/util/zip/ZipFile;)V

    .line 73
    throw v11

    .line 70
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #cpuABI:Ljava/lang/String;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #libFullPath:Ljava/lang/String;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :cond_3
    invoke-static {v4}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/InputStream;)V

    .line 71
    invoke-static {v7}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/io/OutputStream;)V

    .line 72
    invoke-static {v10}, Lcom/chukong/cocosplay/client/CocosTryCloseUtils;->tryClose(Ljava/util/zip/ZipFile;)V

    .line 65
    const/4 v11, 0x0

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 69
    .end local v1           #cpuABI:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #libFullPath:Ljava/lang/String;
    :catchall_1
    move-exception v11

    goto :goto_4

    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 67
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v10       #zipFile:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method
