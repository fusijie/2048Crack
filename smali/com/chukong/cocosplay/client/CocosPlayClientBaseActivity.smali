.class public Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;
.super Landroid/app/Activity;
.source "CocosPlayClientBaseActivity.java"


# static fields
.field public static final EXTRA_CLASS:Ljava/lang/String; = "extra.class"

.field public static final EXTRA_DEX_PATH:Ljava/lang/String; = "extra.dex.path"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "extra.package"

.field public static final FROM:Ljava/lang/String; = "extra.from"

.field static sAppActivity:Landroid/app/Activity;

.field static sDexPath:Ljava/lang/String;

.field static sPackageName:Ljava/lang/String;


# instance fields
.field protected mDexPath:Ljava/lang/String;

.field protected mFrom:I

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mProxyActivity:Landroid/app/Activity;

.field protected that:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mFrom:I

    .line 19
    return-void
.end method

.method public static getPluginPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private loadLibrary()V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->getLibraryNames()[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, libs:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 201
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 202
    .local v0, lib:Ljava/lang/String;
    invoke-static {v0}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static startActivityByProxy(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 115
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, classname:Ljava/lang/String;
    invoke-static {v0}, Lcom/chukong/cocosplay/client/CocosUtils;->isFragmentActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    const-string v2, "com.chukong.cocosplay.CocoProxyFragmentActivity"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :goto_0
    const-string v1, "extra.dex.path"

    sget-object v2, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sDexPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "extra.class"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v1, 0x1800

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0           #classname:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 120
    .restart local v0       #classname:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    const-string v2, "com.chukong.cocosplay.CocosProxyActivity"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 127
    .end local v0           #classname:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sAppActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sAppActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 171
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLibraryNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 279
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 295
    :goto_0
    return-object v2

    .line 281
    :cond_0
    const/16 v0, 0x487

    .line 284
    .local v0, flags:I
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v2, p0, :cond_1

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mDexPath:Ljava/lang/String;

    .line 291
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 293
    .local v1, info:Landroid/content/pm/PackageInfo;
    iput-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_1

    .line 287
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v0, "extra.from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mFrom:I

    .line 60
    const-string v0, "extra.package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sPackageName:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sPackageName:Ljava/lang/String;

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPackageName:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->loadLibrary()V

    .line 65
    iget v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mFrom:I

    if-nez v0, :cond_1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iput-object p0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    .line 68
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->that:Landroid/app/Activity;

    .line 69
    sput-object p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sAppActivity:Landroid/app/Activity;

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sPackageName:Ljava/lang/String;

    .line 72
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 217
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 226
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 235
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 244
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 253
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 263
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 153
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setProxy(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "proxyActivity"
    .parameter "dexPath"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    .line 48
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->that:Landroid/app/Activity;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    .line 50
    sput-object p2, Lcom/chukong/cocosplay/client/CocosPlayClient;->gDexPath:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mDexPath:Ljava/lang/String;

    .line 52
    sput-object p2, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->sDexPath:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->instance()Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->init(Landroid/app/Activity;ILjava/lang/String;)V

    .line 54
    return-void
.end method

.method protected startActivityByProxy(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    :goto_0
    return-void

    .line 90
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosUtils;->isFragmentActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.chukong.cocosplay.fragment.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v1, "extra.dex.path"

    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "extra.class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.chukong.cocosplay.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public startActivityForResultByProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "className"
    .parameter "requestCode"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    :goto_0
    return-void

    .line 107
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.chukong.cocosplay.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "extra.dex.path"

    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "extra.class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
