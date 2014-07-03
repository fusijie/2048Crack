.class Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;
.super Ljava/lang/Object;
.source "RequestResponseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field final synthetic c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 301
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 302
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-nez v0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Click event list empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V

    .line 449
    :goto_0
    return-void

    .line 314
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->addAll(Ljava/util/Collection;)Z

    .line 315
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    .line 324
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getRetryCount()I

    move-result v3

    .line 328
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isPingWv()Z

    move-result v4

    .line 330
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isFollowRedirects()Z

    move-result v5

    .line 333
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getRetryInterval()I

    move-result v1

    .line 337
    iget-object v6, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 339
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Cannot process click. Network Not available"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-le v3, v10, :cond_4

    .line 344
    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_5

    .line 347
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :try_start_2
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Exception pinging click in background"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 444
    :catch_1
    move-exception v0

    .line 446
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Exception ping to server "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 352
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getMaxRetry()I

    move-result v6

    .line 353
    invoke-static {}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_7

    if-ge v3, v6, :cond_7

    .line 354
    const-string v6, "[InMobi]-[Network]-4.1.1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrying to ping in background after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit16 v8, v1, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v6, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    :try_start_4
    sget-object v7, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 369
    :goto_2
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    :cond_7
    :try_start_6
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing click in background: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    if-eqz v4, :cond_b

    .line 379
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClickUrlInWebview(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 381
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping in webview successful: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    .line 426
    :cond_8
    :goto_3
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getmDefaultEventsBatch()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 428
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->saveClickEvents()V

    .line 429
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 363
    :catch_2
    move-exception v1

    .line 364
    :try_start_7
    const-string v7, "[InMobi]-[Network]-4.1.1"

    const-string v8, "Network thread wait failure"

    invoke-static {v7, v8, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 388
    :cond_9
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    .line 389
    if-le v3, v10, :cond_a

    .line 390
    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_a
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping in webview failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_8

    .line 397
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_3

    .line 400
    :cond_b
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v1, v2, v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClickHttpClient(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 402
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping successful: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_8

    .line 407
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 409
    :cond_c
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    .line 410
    if-le v3, v10, :cond_d

    .line 411
    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_d
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping  failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_e

    .line 418
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    .line 419
    :cond_e
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 443
    :cond_f
    :try_start_9
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0
.end method
