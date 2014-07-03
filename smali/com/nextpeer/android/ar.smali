.class final Lcom/nextpeer/android/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:[Ljava/lang/Object;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/ar;->a:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nextpeer/android/ar;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/ar;->d:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/nextpeer/android/ar;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nextpeer/android/ar;->d:I

    iget v1, p0, Lcom/nextpeer/android/ar;->d:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ar;->b:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nextpeer/android/ar;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, p0, Lcom/nextpeer/android/ar;->c:I

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ar;->b:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    array-length v3, v1

    if-eq v3, v2, :cond_3

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/nextpeer/android/ar;->b:[Ljava/lang/Object;

    :cond_3
    move-object v2, v1

    iget-object v1, p0, Lcom/nextpeer/android/ar;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/ar;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nextpeer/android/ar;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ar;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nextpeer/android/ar;->c:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/nextpeer/android/ar;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nextpeer/android/ar;->d:I

    iget v0, p0, Lcom/nextpeer/android/ar;->d:I

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/ar;->b:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/nextpeer/android/ar;->c:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_3

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/nextpeer/android/ar;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v3, 0x0

    :try_start_2
    aput-object v3, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/ar;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
