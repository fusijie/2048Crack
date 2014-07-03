.class public La/a/a/a/a/a/ap;
.super Ljava/lang/Object;


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field protected a:La/a/a/a/a/ak;

.field public b:I

.field public c:Z

.field e:La/a/a/a/a/b/ab;

.field private volatile f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:La/a/a/a/a/a/b/au;

.field private l:La/a/a/a/a/ap;

.field private m:[Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:La/a/a/a/a/ab;

.field private p:La/a/a/a/a/aa;

.field private q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, La/a/a/a/a/a/ap;->f:Z

    iput-boolean v2, p0, La/a/a/a/a/a/ap;->g:Z

    iput-boolean v2, p0, La/a/a/a/a/a/ap;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    iput-object v1, p0, La/a/a/a/a/a/ap;->a:La/a/a/a/a/ak;

    iput-object v1, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    iput-object v1, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    iput-object v1, p0, La/a/a/a/a/a/ap;->m:[Ljava/lang/String;

    iput-object v1, p0, La/a/a/a/a/a/ap;->o:La/a/a/a/a/ab;

    iput-object v1, p0, La/a/a/a/a/a/ap;->p:La/a/a/a/a/aa;

    iput-object v1, p0, La/a/a/a/a/a/ap;->q:Ljava/lang/Object;

    iput v2, p0, La/a/a/a/a/a/ap;->b:I

    iput-boolean v2, p0, La/a/a/a/a/a/ap;->c:Z

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    return-void
.end method

.method private b(J)La/a/a/a/a/a/b/au;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v0

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, La/a/a/a/a/a/ap;->h:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v0

    const/4 v0, 0x3

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, La/a/a/a/a/a/ap;->f:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v0

    const/4 v3, 0x4

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    if-nez v0, :cond_1

    const-string v0, "false"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x5

    iget-object v3, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    aput-object p0, v2, v0

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    iget-boolean v0, p0, La/a/a/a/a/a/ap;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v0, v2

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    iget-boolean v0, p0, La/a/a/a/a/a/ap;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    const-string v0, "true"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    iget-object v0, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v2, La/a/a/a/a/ap;

    invoke-direct {v2, v0}, La/a/a/a/a/ap;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    goto :goto_1

    :cond_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    aput-object v1, v0, v6

    iget-object v0, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    return-object v0
.end method


# virtual methods
.method public final a()La/a/a/a/a/ap;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, La/a/a/a/a/a/ap;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v3

    aput-object p0, v0, v4

    invoke-direct {p0, p1, p2}, La/a/a/a/a/a/ap;->b(J)La/a/a/a/a/a/b/au;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/a/a/a/a/a/ap;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object p0, v0, v3

    new-instance v0, La/a/a/a/a/ap;

    const/16 v1, 0x7d00

    invoke-direct {v0, v1}, La/a/a/a/a/ap;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    throw v0

    :cond_1
    return-void
.end method

.method protected final a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    aput-object p2, v0, v1

    iget-object v1, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    instance-of v0, p1, La/a/a/a/a/a/b/ab;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/ap;->a:La/a/a/a/a/ak;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ap;->g:Z

    iput-object p1, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    iput-object p2, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(La/a/a/a/a/aa;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ap;->p:La/a/a/a/a/aa;

    return-void
.end method

.method protected final a(La/a/a/a/a/ab;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ap;->o:La/a/a/a/a/ab;

    return-void
.end method

.method public final a(La/a/a/a/a/ak;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ap;->a:La/a/a/a/a/ak;

    return-void
.end method

.method public final a(La/a/a/a/a/ap;)V
    .locals 2

    iget-object v1, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ap;->q:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/ap;->f:Z

    return v0
.end method

.method protected final c()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/ap;->g:Z

    return v0
.end method

.method public final d()La/a/a/a/a/aa;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ap;->p:La/a/a/a/a/aa;

    return-object v0
.end method

.method protected final e()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    aput-object v2, v0, v1

    iget-object v1, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/a/a/a/a/a/ap;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ap;->f:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ap;->g:Z

    iget-object v0, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, La/a/a/a/a/a/ap;->h:Z

    iget-object v0, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .locals 4

    iget-object v1, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, La/a/a/a/a/a/ap;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_1

    :try_start_5
    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v0, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    :goto_0
    :try_start_6
    iget-boolean v0, p0, La/a/a/a/a/a/ap;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    if-nez v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, La/a/a/a/a/a/ah;->a(I)La/a/a/a/a/ap;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    throw v0

    :cond_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final g()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/a/a/a/ap;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ap;->d:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, La/a/a/a/a/a/ap;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ap;->f:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, La/a/a/a/a/a/ap;->h:Z

    iget-object v0, p0, La/a/a/a/a/a/ap;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()La/a/a/a/a/ab;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ap;->o:La/a/a/a/a/ab;

    return-object v0
.end method

.method public final i()La/a/a/a/a/a/b/au;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ap;->k:La/a/a/a/a/a/b/au;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/ap;->c:Z

    return v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ap;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ap;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ,topics="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, La/a/a/a/a/a/ap;->m:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/a/a/a/a/a/ap;->m:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ,usercontext="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ap;->q:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ,isComplete="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, La/a/a/a/a/a/ap;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ,isNotified="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, La/a/a/a/a/a/ap;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ,exception="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ap;->l:La/a/a/a/a/ap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ,actioncallback="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ap;->p:La/a/a/a/a/aa;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, La/a/a/a/a/a/ap;->m:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
