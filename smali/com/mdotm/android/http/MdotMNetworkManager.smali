.class public Lcom/mdotm/android/http/MdotMNetworkManager;
.super Ljava/lang/Object;
.source "MdotMNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/http/MdotMNetworkManager$Requests;
    }
.end annotation


# static fields
.field public static MdotM_Banner_Temp:Ljava/lang/String;

.field public static MdotM_CACHE_FOLDER:Ljava/lang/String;

.field public static MdotM_Interstitial_Temp:Ljava/lang/String;

.field public static MdotM_PermanentCaching:Ljava/lang/String;

.field private static cacheLocation:I

.field private static enableCaching:Z

.field public static gifImageResource:I

.field public static htmlResource:I

.field public static imageResource:I

.field private static isSDCardExist:Z

.field private static mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

.field public static videoResource:I


# instance fields
.field private final CORE_POOL_SIZE:I

.field private final HTTP_RESPONSE_OK:I

.field private final KEEP_ALIVE_TIME_IN_SEC:I

.field private final MAX_POOL_SIZE:I

.field private adCacheSizeInternal:I

.field private adCacheSizeSDCard:I

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private minMemorySize:J

.field networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

.field private temporaryCacheSize:I

.field private worksQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "MdotMTempCache"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    .line 50
    const-string v0, "PermanentCache"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    .line 51
    const-string v0, "BannerTemp"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    .line 52
    const-string v0, "InterstitialTemp"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->enableCaching:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    .line 87
    sput-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    .line 91
    const/4 v0, 0x2

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    .line 92
    const/4 v0, 0x3

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    .line 93
    const/4 v0, 0x4

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->temporaryCacheSize:I

    .line 60
    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->minMemorySize:J

    .line 64
    const v0, 0x7f4240

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeSDCard:I

    .line 69
    const/high16 v0, 0x50

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeInternal:I

    .line 95
    iput v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->CORE_POOL_SIZE:I

    .line 96
    iput v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->MAX_POOL_SIZE:I

    .line 97
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->KEEP_ALIVE_TIME_IN_SEC:I

    .line 99
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 100
    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->worksQueue:Ljava/util/concurrent/BlockingQueue;

    .line 103
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->HTTP_RESPONSE_OK:I

    .line 124
    iput-object p2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->setThreadPool()V

    .line 128
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    return v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAvailableMemory(I)Z
    .locals 4
    .parameter "location"

    .prologue
    .line 517
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 522
    .local v0, availableSize:J
    :goto_0
    iget-wide v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->minMemorySize:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 523
    const/4 v2, 0x1

    .line 525
    :goto_1
    return v2

    .line 520
    .end local v0           #availableSize:J
    :cond_0
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .restart local v0       #availableSize:J
    goto :goto_0

    .line 525
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkCacheStatus(Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 10
    .parameter "requestParams"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 142
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkSDCardState()Z

    move-result v5

    sput-boolean v5, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    .line 143
    sget-boolean v5, Lcom/mdotm/android/http/MdotMNetworkManager;->enableCaching:Z

    if-eqz v5, :cond_12

    .line 149
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getCacheLocation()I

    move-result v5

    .line 149
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cache location is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, path:Ljava/lang/String;
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v5, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->manageCacheSize()V

    .line 158
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v7, :cond_4

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 160
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-direct {p0, v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->verifyCache(Ljava/lang/String;)Z

    .line 183
    :cond_0
    :goto_0
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v5, :cond_9

    .line 184
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v9, :cond_7

    .line 185
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 187
    .local v1, enoughMemoryAvailable:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location is sd card calculating available memory is available "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    if-nez v1, :cond_1

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, cacheFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 194
    const-string v5, "Cache folder doesn\'t exist on sd card"

    .line 193
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 196
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 197
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 198
    sput v7, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 199
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 200
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 286
    .end local v0           #cacheFolder:Ljava/io/File;
    .end local v1           #enoughMemoryAvailable:Z
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 287
    .local v2, file:Ljava/io/File;
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v5, :cond_11

    .line 289
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v7, :cond_e

    .line 290
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v2       #file:Ljava/io/File;
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    .line 304
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v9, :cond_2

    .line 305
    sput v7, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 306
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    .line 307
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 309
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 310
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 311
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v2       #file:Ljava/io/File;
    const-string v5, "unable to create folder on sd card so creating on internal memory"

    .line 313
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 321
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v7, :cond_10

    .line 323
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 324
    invoke-virtual {v5, v7}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCacheLocation(I)Z

    .line 333
    :cond_3
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "enabled cache location is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 334
    const-string v6, " file path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 333
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .end local v2           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :goto_5
    return-void

    .line 164
    .restart local v4       #path:Ljava/lang/String;
    :cond_4
    sget-boolean v5, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v5, :cond_5

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 168
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 170
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 171
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-direct {p0, v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->verifyCache(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 174
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sd card exist is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    const-string v6, " clearing tables"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 177
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {v5, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 178
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_0

    .line 204
    .restart local v0       #cacheFolder:Ljava/io/File;
    .restart local v1       #enoughMemoryAvailable:Z
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 205
    .local v3, files:[Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 206
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 207
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 208
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    sput v7, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 210
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 218
    .end local v0           #cacheFolder:Ljava/io/File;
    .end local v1           #enoughMemoryAvailable:Z
    .end local v3           #files:[Ljava/io/File;
    :cond_7
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v7, :cond_1

    .line 219
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 221
    .restart local v1       #enoughMemoryAvailable:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location is internal calculating available memory is available "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    if-nez v1, :cond_1

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v0       #cacheFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 229
    const-string v5, "Cache folder doesn\'t exist on sd card"

    .line 228
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 231
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 232
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 236
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 237
    .restart local v3       #files:[Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 238
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 239
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 240
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 241
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 249
    .end local v0           #cacheFolder:Ljava/io/File;
    .end local v1           #enoughMemoryAvailable:Z
    .end local v3           #files:[Ljava/io/File;
    :cond_9
    const-string v5, "Cache is not there initializing the cache"

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-boolean v5, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v5, :cond_c

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sd card exist is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v9}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 256
    .restart local v1       #enoughMemoryAvailable:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location is sd card calculating available memory is available "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    if-eqz v1, :cond_a

    .line 259
    sput v9, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 263
    :cond_a
    invoke-direct {p0, v7}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "memory is not available on sd card checking on internal memory. is available "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    if-eqz v1, :cond_b

    .line 268
    sput v7, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 270
    :cond_b
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 275
    .end local v1           #enoughMemoryAvailable:Z
    :cond_c
    invoke-direct {p0, v7}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 277
    .restart local v1       #enoughMemoryAvailable:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " sd card not there checking on internal memory. is available "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 277
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    if-eqz v1, :cond_d

    .line 280
    sput v7, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 282
    :cond_d
    sput v8, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 294
    .end local v1           #enoughMemoryAvailable:Z
    .restart local v2       #file:Ljava/io/File;
    :cond_e
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 295
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 299
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #file:Ljava/io/File;
    goto/16 :goto_2

    .line 318
    :cond_f
    const-string v5, "File created "

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 326
    :cond_10
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v5, v9, :cond_3

    .line 327
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 328
    invoke-virtual {v5, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCacheLocation(I)Z

    goto/16 :goto_4

    .line 340
    :cond_11
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->createTemporaryCache(Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 341
    invoke-virtual {p1, v8}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    goto/16 :goto_5

    .line 351
    .end local v2           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_12
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->createTemporaryCache(Lcom/mdotm/android/model/MdotMAdRequest;)V

    goto/16 :goto_5
.end method

.method private checkSDCardState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkWriteExternalPermission()Z

    move-result v0

    .line 703
    .local v0, sdcardWritable:Z
    if-eqz v0, :cond_0

    .line 704
    const-string v2, "SD card exist and writable"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    .end local v0           #sdcardWritable:Z
    :goto_0
    return v0

    .line 706
    .restart local v0       #sdcardWritable:Z
    :cond_0
    const-string v2, "SD card exist and not permission"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    .end local v0           #sdcardWritable:Z
    :cond_1
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    const-string v2, "SD card exist but not writable"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_2
    const-string v2, "SD card not exist"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkWriteExternalPermission()Z
    .locals 3

    .prologue
    .line 721
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 722
    .local v0, permission:Ljava/lang/String;
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 723
    .local v1, res:I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearCahe([Ljava/io/File;)V
    .locals 4
    .parameter "files"

    .prologue
    .line 678
    const-string v1, "Clearing cached file"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    if-eqz p1, :cond_0

    .line 680
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 690
    :cond_0
    return-void

    .line 680
    :cond_1
    aget-object v0, p1, v1

    .line 681
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 683
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 680
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private createTemporaryCache(Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 5
    .parameter "requestParams"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, file:Ljava/io/File;
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->isLoadInterstitial()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    sget-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v1, :cond_2

    .line 376
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 381
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .restart local v0       #file:Ljava/io/File;
    sput v3, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 389
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v3, :cond_0

    .line 392
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 393
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 396
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v0       #file:Ljava/io/File;
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 399
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->manageTemporaryCache(Ljava/io/File;)V

    .line 448
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp cache location is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    const-string v2, " file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    return-void

    .line 384
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .restart local v0       #file:Ljava/io/File;
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_0

    .line 404
    :cond_3
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_4
    sget-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v1, :cond_5

    .line 410
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 415
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v0       #file:Ljava/io/File;
    sput v3, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 423
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 425
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v3, :cond_0

    .line 426
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 427
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 431
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .restart local v0       #file:Ljava/io/File;
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 433
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1

    .line 418
    :cond_5
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v0       #file:Ljava/io/File;
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_2

    .line 438
    :cond_6
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deleteLeastRecentlyUsedCache()Z
    .locals 4

    .prologue
    .line 992
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 993
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v1, v2, v3}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteCache(Landroid/content/Context;I)Z

    move-result v0

    .line 994
    .local v0, canDelete:Z
    return v0
.end method

.method private getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 1032
    sget-boolean v6, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v6, :cond_0

    .line 1033
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 1034
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1036
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1037
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 1039
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    .line 1024
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1026
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1027
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/mdotm/android/http/MdotMNetworkManager;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 113
    sget-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    if-nez v0, :cond_0

    .line 114
    const-string v0, ""

    const-string v1, "**Creating new manager"

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    .line 119
    :goto_0
    sget-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    return-object v0

    .line 117
    :cond_0
    const-string v0, ""

    const-string v1, "**Using existing manager"

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSize(Ljava/io/File;I)I
    .locals 8
    .parameter "directory"
    .parameter "sizeInBytes"

    .prologue
    .line 999
    if-nez p1, :cond_0

    move v3, p2

    .line 1018
    .end local p2
    .local v3, sizeInBytes:I
    :goto_0
    return v3

    .line 1001
    .end local v3           #sizeInBytes:I
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move v3, p2

    .line 1002
    .end local p2
    .restart local v3       #sizeInBytes:I
    goto :goto_0

    .line 1003
    .end local v3           #sizeInBytes:I
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1004
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, list:[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1008
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-lt v1, v4, :cond_3

    .end local v1           #i:I
    .end local v2           #list:[Ljava/lang/String;
    :cond_2
    move v3, p2

    .line 1018
    .end local p2
    .restart local v3       #sizeInBytes:I
    goto :goto_0

    .line 1009
    .end local v3           #sizeInBytes:I
    .restart local v1       #i:I
    .restart local v2       #list:[Ljava/lang/String;
    .restart local p2
    :cond_3
    new-instance v0, Ljava/io/File;

    aget-object v4, v2, v1

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1010
    .local v0, entry:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1011
    invoke-direct {p0, v0, p2}, Lcom/mdotm/android/http/MdotMNetworkManager;->getSize(Ljava/io/File;I)I

    move-result p2

    .line 1008
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1013
    :cond_4
    int-to-long v4, p2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int p2, v4

    goto :goto_2
.end method

.method private manageCacheSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 955
    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v2, :cond_0

    .line 956
    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 957
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 958
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 960
    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 961
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 962
    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-direct {p0, v2, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->getSize(Ljava/io/File;I)I

    move-result v0

    .line 963
    .local v0, cacheSize:I
    iget v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeInternal:I

    .line 983
    .local v1, maxCacheSize:I
    :goto_0
    if-le v0, v1, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->deleteLeastRecentlyUsedCache()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->manageCacheSize()V

    .line 988
    .end local v0           #cacheSize:I
    .end local v1           #maxCacheSize:I
    :cond_0
    return-void

    .line 969
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 970
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 972
    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-direct {p0, v2, v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->getSize(Ljava/io/File;I)I

    move-result v0

    .line 973
    .restart local v0       #cacheSize:I
    iget v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeSDCard:I

    .restart local v1       #maxCacheSize:I
    goto :goto_0
.end method

.method private manageTemporaryCache(Ljava/io/File;)V
    .locals 14
    .parameter "fileFolder"

    .prologue
    const/4 v8, 0x0

    .line 455
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file count "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    iget v10, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->temporaryCacheSize:I

    if-lt v9, v10, :cond_0

    .line 458
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 460
    .local v2, fileList:[Ljava/io/File;
    array-length v9, v2

    new-array v4, v9, [J

    .line 462
    .local v4, fileTimes:[J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v9, v2

    if-lt v5, v9, :cond_1

    .line 486
    :try_start_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 498
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-lt v8, v9, :cond_2

    .line 512
    .end local v2           #fileList:[Ljava/io/File;
    .end local v4           #fileTimes:[J
    .end local v5           #i:I
    :cond_0
    :goto_2
    return-void

    .line 463
    .restart local v2       #fileList:[Ljava/io/File;
    .restart local v4       #fileTimes:[J
    .restart local v5       #i:I
    :cond_1
    aget-object v3, v2, v5

    .line 464
    .local v3, fileName:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, name:Ljava/lang/String;
    :try_start_1
    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, time:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    .end local v7           #time:Ljava/lang/String;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception while checking file cached time "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 475
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 473
    invoke-static {p0, v9}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 498
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fileName:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    :try_start_2
    aget-object v1, v2, v8

    .line 500
    .local v1, file:Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "searching file name "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "deleting file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 502
    invoke-static {p0, v8}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 508
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 509
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 498
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method private setThreadPool()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 728
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 729
    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->worksQueue:Ljava/util/concurrent/BlockingQueue;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 728
    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 730
    return-void
.end method

.method private verifyCache(Ljava/lang/String;)Z
    .locals 29
    .parameter "filePath"

    .prologue
    .line 540
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v5, cacheFolder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 543
    const/16 v20, 0x0

    sput v20, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 544
    const/16 v20, 0x0

    .line 669
    :goto_0
    return v20

    .line 547
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 546
    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 547
    invoke-virtual/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFileFromCacheTable()[Ljava/lang/String;

    move-result-object v12

    .line 549
    .local v12, filesFromCacheTable:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 548
    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 549
    invoke-virtual/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFilesfromResourceTable()[Ljava/lang/String;

    move-result-object v13

    .line 550
    .local v13, filesFromResourceTable:[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 551
    .local v11, files:[Ljava/io/File;
    if-eqz v12, :cond_f

    if-eqz v11, :cond_f

    .line 553
    const/4 v10, 0x0

    .line 554
    .local v10, fileCount:I
    if-eqz v12, :cond_1

    .line 555
    array-length v0, v12

    move/from16 v20, v0

    add-int v10, v10, v20

    .line 557
    :cond_1
    if-eqz v13, :cond_2

    .line 558
    array-length v0, v13

    move/from16 v20, v0

    add-int v10, v10, v20

    .line 560
    :cond_2
    array-length v6, v11

    .line 561
    .local v6, cachedFileCount:I
    if-eq v10, v6, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 566
    invoke-virtual/range {v20 .. v21}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 568
    const-string v20, "file count missmatch clearing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 570
    const/16 v20, 0x0

    sput v20, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 571
    const/16 v20, 0x0

    goto :goto_0

    .line 574
    :cond_3
    sget v20, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 575
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 576
    sget-object v21, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 577
    sget-object v21, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 575
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 585
    .local v16, path:Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_4

    .line 586
    array-length v0, v12

    move/from16 v22, v0

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 616
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 615
    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 616
    invoke-virtual/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFilesfromResourceTable()[Ljava/lang/String;

    move-result-object v13

    .line 617
    if-eqz v13, :cond_5

    .line 618
    array-length v0, v13

    move/from16 v23, v0

    const/16 v20, 0x0

    move/from16 v22, v20

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 658
    :cond_5
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 579
    .end local v16           #path:Ljava/lang/String;
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    .line 580
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 582
    sget-object v21, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 583
    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 579
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #path:Ljava/lang/String;
    goto :goto_1

    .line 586
    :cond_7
    aget-object v9, v12, v21

    .line 587
    .local v9, file:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v4, cacheFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_8

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 590
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 593
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 594
    .local v19, resources:[Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 595
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 586
    .end local v19           #resources:[Ljava/lang/String;
    :cond_8
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto/16 :goto_2

    .line 595
    .restart local v19       #resources:[Ljava/lang/String;
    :cond_9
    aget-object v18, v19, v20

    .line 598
    .local v18, resource:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v24

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 601
    sget v26, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 599
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 602
    :catch_0
    move-exception v7

    .line 605
    .local v7, e:Ljava/lang/Exception;
    const-string v24, "Exception while delting the resources"

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 618
    .end local v4           #cacheFile:Ljava/io/File;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #file:Ljava/lang/String;
    .end local v18           #resource:Ljava/lang/String;
    .end local v19           #resources:[Ljava/lang/String;
    :cond_a
    aget-object v17, v13, v22

    .line 619
    .local v17, res:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .restart local v4       #cacheFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_b

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 623
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getResourceParents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 624
    .local v15, parentFile:[Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 625
    array-length v0, v15

    move/from16 v24, v0

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_c

    .line 618
    .end local v15           #parentFile:[Ljava/lang/String;
    :cond_b
    add-int/lit8 v20, v22, 0x1

    move/from16 v22, v20

    goto/16 :goto_3

    .line 625
    .restart local v15       #parentFile:[Ljava/lang/String;
    :cond_c
    aget-object v14, v15, v21

    .line 626
    .local v14, parent:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 628
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 630
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 631
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    .line 635
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 636
    .restart local v19       #resources:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_e

    .line 625
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto :goto_6

    .line 636
    :cond_e
    aget-object v18, v19, v20

    .line 639
    .restart local v18       #resource:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    .line 638
    invoke-static/range {v26 .. v26}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v26

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    .line 643
    sget v28, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 640
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 645
    :catch_1
    move-exception v7

    .line 648
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v26, "Exception while delting the resources"

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 666
    .end local v4           #cacheFile:Ljava/io/File;
    .end local v6           #cachedFileCount:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #f:Ljava/io/File;
    .end local v10           #fileCount:I
    .end local v14           #parent:Ljava/lang/String;
    .end local v15           #parentFile:[Ljava/lang/String;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #res:Ljava/lang/String;
    .end local v18           #resource:Ljava/lang/String;
    .end local v19           #resources:[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 667
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 668
    const/16 v20, 0x0

    sput v20, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 669
    const/16 v20, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public sendRequest(Lcom/mdotm/android/model/MdotMAdRequest;J)V
    .locals 9
    .parameter "params"
    .parameter "requestId"

    .prologue
    .line 739
    const-string v0, "** Send request"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    if-eqz p1, :cond_0

    .line 742
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->isEnableCaching()Z

    move-result v0

    sput-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->enableCaching:Z

    .line 743
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkCacheStatus(Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 746
    iget-object v8, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;

    new-instance v1, Lcom/mdotm/android/utils/MdotMRequestBuilder;

    .line 747
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mdotm/android/utils/MdotMRequestBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/mdotm/android/utils/MdotMRequestBuilder;->buildRequest(Lcom/mdotm/android/model/MdotMAdRequest;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;-><init>(Lcom/mdotm/android/http/MdotMNetworkManager;Ljava/lang/StringBuffer;Lcom/mdotm/android/model/MdotMAdRequest;J)V

    .line 746
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v6

    .line 751
    .local v6, e:Ljava/util/concurrent/RejectedExecutionException;
    const-string v0, "**Reject Exception"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 753
    .local v7, msg:Landroid/os/Message;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 755
    .end local v6           #e:Ljava/util/concurrent/RejectedExecutionException;
    .end local v7           #msg:Landroid/os/Message;
    :catch_1
    move-exception v6

    .line 756
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 758
    .restart local v7       #msg:Landroid/os/Message;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAdNetworkListener(Lcom/mdotm/android/listener/MdotMNetworkListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 734
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    .line 735
    return-void
.end method
