.class Lcom/nextpeer/android/facebook/internal/FileLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/internal/FileLruCache$StreamCloseCallback;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/internal/FileLruCache;

.field private final synthetic val$buffer:Ljava/io/File;

.field private final synthetic val$bufferFileCreateTime:J

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->this$0:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    iput-wide p2, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$bufferFileCreateTime:J

    iput-object p4, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 4

    iget-wide v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$bufferFileCreateTime:J

    iget-object v2, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->this$0:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    #getter for: Lcom/nextpeer/android/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->access$1(Lcom/nextpeer/android/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->this$0:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;

    #calls: Lcom/nextpeer/android/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->access$2(Lcom/nextpeer/android/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method
