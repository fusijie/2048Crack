.class public final Lcom/nextpeer/android/facebook/internal/FileLruCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/internal/FileLruCache$BufferFile;,
        Lcom/nextpeer/android/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/nextpeer/android/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;,
        Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/nextpeer/android/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/nextpeer/android/facebook/internal/FileLruCache$StreamHeader;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimPending:Z

.field private lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final limits:Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->limits:Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nextpeer/android/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$3(Lcom/nextpeer/android/facebook/internal/FileLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->trim()V

    return-void
.end method

.method private postTrim()V
    .locals 3

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->isTrimPending:Z

    invoke-static {}, Lcom/nextpeer/android/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/nextpeer/android/facebook/internal/FileLruCache$3;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$3;-><init>(Lcom/nextpeer/android/facebook/internal/FileLruCache;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/nextpeer/android/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->postTrim()V

    return-void
.end method

.method private trim()V
    .locals 20

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v2, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v3, "trim started"

    invoke-static {v1, v2, v3}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/PriorityQueue;

    invoke-direct {v8}, Ljava/util/PriorityQueue;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/nextpeer/android/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_2

    array-length v10, v9

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v10, :cond_0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v4, v18

    move-wide/from16 v2, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->limits:Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;->getByteCount()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->limits:Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;->getFileCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->isTrimPending:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :cond_0
    :try_start_2
    aget-object v6, v9, v5

    new-instance v7, Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;

    invoke-direct {v7, v6}, Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v12, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "  trim considering time="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v6, v3

    const-wide/16 v3, 0x1

    add-long v2, v1, v3

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-wide v3, v6

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v6

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v7, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  trim removing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v9}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x1

    sub-long v1, v2, v9

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->isTrimPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v4, v18

    move-wide/from16 v2, v16

    goto/16 :goto_1
.end method


# virtual methods
.method public final clearCache()V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/nextpeer/android/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/nextpeer/android/facebook/internal/FileLruCache$2;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$2;-><init>(Lcom/nextpeer/android/facebook/internal/FileLruCache;[Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/nextpeer/android/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_1
    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v4, "tag"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :cond_5
    :try_start_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v5, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting lastModified to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/facebook/internal/FileLruCache$CopyingInputStream;

    invoke-direct {v1, p2, v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method final openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create file at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;-><init>(Lcom/nextpeer/android/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v1, v6, v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/nextpeer/android/facebook/internal/FileLruCache$StreamCloseCallback;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x2000

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {v2, v0}, Lcom/nextpeer/android/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v2, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating buffer output stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const/4 v3, 0x5

    sget-object v4, Lcom/nextpeer/android/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating JSON header for cache file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
.end method

.method final sizeInBytesForTest()J
    .locals 7

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const-wide/16 v0, 0x0

    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v6, :cond_2

    :cond_0
    return-wide v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{FileLruCache: tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
