.class Lcom/nextpeer/android/facebook/internal/FileLruCache$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/internal/FileLruCache;

.field private final synthetic val$filesToDelete:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/internal/FileLruCache;[Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$2;->this$0:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$2;->val$filesToDelete:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/FileLruCache$2;->val$filesToDelete:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
