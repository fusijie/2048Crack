.class Lcom/millennialmedia/android/PreCacheWorker$1;
.super Ljava/lang/Object;
.source "PreCacheWorker.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/PreCacheWorker;->handleJson(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/PreCacheWorker;

.field final synthetic val$cachedVideo:Lcom/millennialmedia/android/DTOCachedVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/PreCacheWorker;Lcom/millennialmedia/android/DTOCachedVideo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->this$0:Lcom/millennialmedia/android/PreCacheWorker;

    iput-object p2, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->val$cachedVideo:Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 2
    .parameter "ad"
    .parameter "success"

    .prologue
    .line 152
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->this$0:Lcom/millennialmedia/android/PreCacheWorker;

    #getter for: Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/millennialmedia/android/PreCacheWorker;->access$000(Lcom/millennialmedia/android/PreCacheWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 154
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->this$0:Lcom/millennialmedia/android/PreCacheWorker;

    const/4 v1, 0x1

    #setter for: Lcom/millennialmedia/android/PreCacheWorker;->downloadedNewVideos:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/PreCacheWorker;->access$102(Lcom/millennialmedia/android/PreCacheWorker;Z)Z

    .line 155
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->val$cachedVideo:Lcom/millennialmedia/android/DTOCachedVideo;

    iget-object v0, v0, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheCompleteURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->val$cachedVideo:Lcom/millennialmedia/android/DTOCachedVideo;

    iget-object v0, v0, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheFailedURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 1
    .parameter "ad"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker$1;->val$cachedVideo:Lcom/millennialmedia/android/DTOCachedVideo;

    iget-object v0, v0, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheStartURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 146
    return-void
.end method
