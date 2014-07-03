.class public final Lcom/chukong/cocosplay/client/CocosLibraryLoader;
.super Ljava/lang/Object;
.source "CocosLibraryLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CocosLibraryLoader"

.field private static _instance:Lcom/chukong/cocosplay/client/CocosLibraryLoader;


# instance fields
.field private mApkPath:Ljava/lang/String;

.field private mAppType:I

.field private mLibSavePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mAppType:I

    .line 30
    return-void
.end method

.method private _loadLibrary(Ljava/lang/String;)V
    .locals 7
    .parameter "libName"

    .prologue
    .line 64
    iget v4, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mAppType:I

    if-nez v4, :cond_1

    .line 65
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v4, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mAppType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, fullLibName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mLibSavePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, libFullPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    iget-object v4, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mApkPath:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/chukong/cocosplay/client/CocosUtils;->unZipLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 72
    .local v0, b:Z
    if-nez v0, :cond_2

    .line 73
    const-string v4, "CocosLibraryLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " not exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v0           #b:Z
    :cond_2
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static instance()Lcom/chukong/cocosplay/client/CocosLibraryLoader;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->_instance:Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    invoke-direct {v0}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;-><init>()V

    sput-object v0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->_instance:Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    .line 36
    :cond_0
    sget-object v0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->_instance:Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    return-object v0
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 1
    .parameter "libName"

    .prologue
    .line 60
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->instance()Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->_loadLibrary(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method init(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6
    .parameter "container"
    .parameter "type"
    .parameter "apkPath"

    .prologue
    .line 40
    iput p2, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mAppType:I

    .line 41
    iput-object p3, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mApkPath:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 44
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 45
    .local v0, dataDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/libs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, libDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->mLibSavePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0           #dataDir:Ljava/lang/String;
    .end local v2           #libDir:Ljava/io/File;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
