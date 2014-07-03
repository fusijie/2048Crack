.class public final Lcom/chukong/cocosplay/client/CocosPlayClient;
.super Ljava/lang/Object;
.source "CocosPlayClient.java"


# static fields
.field public static gDexPath:Ljava/lang/String;

.field public static gPackageName:Ljava/lang/String;

.field public static gPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifiyDemoEnded(Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/chukong/cocosplay/client/CocosPlayClientBaseActivity;->getProxyActivity()Landroid/app/Activity;

    move-result-object v4

    .line 18
    .local v4, proxyActivity:Landroid/app/Activity;
    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 21
    .local v2, loader:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v5, "com.chukong.cocosplay.CocosPlay"

    const/4 v6, 0x1

    invoke-static {v5, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "notifyDemoEndedFromClient"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 23
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 24
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #loader:Ljava/lang/ClassLoader;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v2       #loader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 26
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateAssets(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "activity"
    .parameter "packageName"
    .parameter "resPath"

    .prologue
    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 35
    .local v2, loader:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v4, "com.chukong.cocosplay.client.CocosPlayClientStub"

    const/4 v5, 0x1

    invoke-static {v4, v5, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "updateAssets"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Activity;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 37
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #loader:Ljava/lang/ClassLoader;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local v2       #loader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
