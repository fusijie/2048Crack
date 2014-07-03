.class final Lcom/nextpeer/android/av;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/av$aa;,
        Lcom/nextpeer/android/av$ab;,
        Lcom/nextpeer/android/av$ac;
    }
.end annotation


# static fields
.field private static e:Lcom/nextpeer/android/av;


# instance fields
.field private a:Ljava/util/Date;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nextpeer/android/hq;

.field private d:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/nextpeer/android/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nextpeer/android/ar",
            "<",
            "Lcom/nextpeer/android/av$ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/av;->e:Lcom/nextpeer/android/av;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    iput-object v0, p0, Lcom/nextpeer/android/av;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;

    iput-object v0, p0, Lcom/nextpeer/android/av;->d:Landroid/os/AsyncTask;

    new-instance v0, Lcom/nextpeer/android/ar;

    invoke-direct {v0}, Lcom/nextpeer/android/ar;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/av;->e:Lcom/nextpeer/android/av;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/av;

    invoke-direct {v0}, Lcom/nextpeer/android/av;-><init>()V

    sput-object v0, Lcom/nextpeer/android/av;->e:Lcom/nextpeer/android/av;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/av;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/av;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;

    iput-object v0, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ac;

    invoke-interface {v0}, Lcom/nextpeer/android/av$ac;->a()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/av;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/av;->d:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/av;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/nextpeer/android/av;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ac;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/av$ac;->a(Ljava/util/List;)V

    move v0, v1

    goto :goto_0
.end method

.method public static b()Lcom/nextpeer/android/av;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/av;->e:Lcom/nextpeer/android/av;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/av$ac;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/nextpeer/android/av$ac;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/av;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/aw;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/aw;-><init>(Lcom/nextpeer/android/av;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ho;->d(Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/av;->d:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/av;->d:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/av;->c:Lcom/nextpeer/android/hq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nextpeer/android/av;->d()V

    iput-object v0, p0, Lcom/nextpeer/android/av;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    return-void
.end method

.method public final f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/av;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nextpeer/android/av;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/av;->e()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/av;->b:Ljava/util/List;

    return-object v0
.end method
