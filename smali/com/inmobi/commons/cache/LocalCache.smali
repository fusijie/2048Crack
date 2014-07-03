.class public final Lcom/inmobi/commons/cache/LocalCache;
.super Ljava/lang/Object;
.source "LocalCache.java"


# static fields
.field public static final DEFAULTURL:Ljava/lang/String; = "https://inmobisdk-a.akamaihd.net/sdk/configs/400/rootConfig.json"

.field public static final FILENAME:Ljava/lang/String; = "inmobi.cache"

.field private static a:Ljava/lang/String;

.field private static b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "{url:\'https://inmobisdk-a.akamaihd.net/sdk/configs/400/rootConfig.json\'}"

    sput-object v0, Lcom/inmobi/commons/cache/LocalCache;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->c()V

    return-void
.end method

.method public static addToCache(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v1, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->initRoot()V

    .line 91
    :cond_0
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->b()V

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/commons/cache/LocalCache$a;

    invoke-direct {v1}, Lcom/inmobi/commons/cache/LocalCache$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method private static c()V
    .locals 5

    .prologue
    .line 74
    sget-object v1, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "inmobi.cache"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v2, "[InMobi]-4.1.1"

    const-string v3, "Unable to save all configs to persistent memory"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getCacheForProduct(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 98
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->initRoot()V

    .line 102
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRoot()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static initRoot()V
    .locals 4

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    sget-object v1, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    monitor-enter v1

    .line 39
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "inmobi.cache"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    :cond_2
    const-string v0, "[InMobi]-4.1.1"

    const-string v2, "Configs not present in persistence. Using default configs."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->a:Ljava/lang/String;

    .line 45
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/inmobi/commons/cache/LocalCache;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "[InMobi]-4.1.1"

    const-string v2, "Default JSON root is unable to parse? What sorcery is this?"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    :try_start_3
    const-string v2, "[InMobi]-4.1.1"

    const-string v3, "Unable to read configs from persistent memory"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    :try_start_4
    const-string v2, "[InMobi]-4.1.1"

    const-string v3, "Ill formed JSON while parsing from persistent memory"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    .line 110
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->c()V

    .line 112
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->initRoot()V

    .line 113
    return-void
.end method

.method public static saveRoot(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    sput-object p0, Lcom/inmobi/commons/cache/LocalCache;->b:Lorg/json/JSONObject;

    .line 121
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->b()V

    .line 122
    return-void
.end method
