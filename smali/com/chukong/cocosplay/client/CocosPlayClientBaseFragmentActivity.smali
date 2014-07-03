.class public Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CocosPlayClientBaseFragmentActivity.java"


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

.field protected mProxyActivity:Landroid/app/Activity;

.field protected that:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mFrom:I

    .line 20
    return-void
.end method

.method public static getPluginPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private loadLibrary()V
    .locals 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->getLibraryNames()[Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, libs:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 228
    :cond_0
    return-void

    .line 224
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 225
    .local v0, lib:Ljava/lang/String;
    invoke-static {v0}, Lcom/chukong/cocosplay/client/CocosUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {v0}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static startActivityByProxy(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 111
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, classname:Ljava/lang/String;
    invoke-static {v0}, Lcom/chukong/cocosplay/client/CocosUtils;->isFragmentActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    .line 115
    const-string v2, "com.chukong.cocosplay.CocoProxyFragmentActivity"

    .line 114
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :goto_0
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sDexPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/chukong/cocosplay/client/CocosUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gDexPath:Ljava/lang/String;

    sput-object v1, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sDexPath:Ljava/lang/String;

    .line 123
    :cond_0
    const-string v1, "extra.dex.path"

    sget-object v2, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sDexPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "extra.class"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x1800

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    .end local v0           #classname:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 117
    .restart local v0       #classname:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    .line 118
    const-string v2, "com.chukong.cocosplay.CocosProxyActivity"

    .line 117
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    .end local v0           #classname:Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sAppActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sAppActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 174
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 183
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLibraryNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v1

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 204
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "extra.from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mFrom:I

    .line 57
    const-string v0, "extra.package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sPackageName:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->loadLibrary()V

    .line 60
    iget v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mFrom:I

    if-nez v0, :cond_1

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    .line 63
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->that:Landroid/app/Activity;

    .line 64
    sput-object p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sAppActivity:Landroid/app/Activity;

    .line 65
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sPackageName:Ljava/lang/String;

    .line 67
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 243
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 252
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 261
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 270
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 279
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 288
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 298
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 165
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 156
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setProxy(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "proxyActivity"
    .parameter "dexPath"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    .line 46
    iget-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->that:Landroid/app/Activity;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chukong/cocosplay/client/CocosPlayClient;->gPluginContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mDexPath:Ljava/lang/String;

    .line 49
    sput-object p2, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->sDexPath:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->instance()Lcom/chukong/cocosplay/client/CocosLibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chukong/cocosplay/client/CocosLibraryLoader;->init(Landroid/app/Activity;ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method protected startActivityByProxy(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    :goto_0
    return-void

    .line 85
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosUtils;->isFragmentActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    new-instance v0, Landroid/content/Intent;

    .line 87
    const-string v1, "com.chukong.cocosplay.fragment.VIEW"

    .line 86
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v1, "extra.dex.path"

    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "extra.class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
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
    .line 98
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    :goto_0
    return-void

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.chukong.cocosplay.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "extra.dex.path"

    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "extra.class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/chukong/cocosplay/client/CocosPlayClientBaseFragmentActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
