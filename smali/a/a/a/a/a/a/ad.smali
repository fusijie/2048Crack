.class public La/a/a/a/a/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:La/a/a/a/a/a/ab;

.field private d:La/a/a/a/a/a/aa;

.field private e:La/a/a/a/a/a/b/af;

.field private f:La/a/a/a/a/a/af;

.field private g:Ljava/lang/Thread;

.field private i:La/a/a/a/a/b/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(La/a/a/a/a/a/aa;La/a/a/a/a/a/ab;La/a/a/a/a/a/af;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ad;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ad;->b:Ljava/lang/Object;

    iput-object v1, p0, La/a/a/a/a/a/ad;->c:La/a/a/a/a/a/ab;

    iput-object v1, p0, La/a/a/a/a/a/ad;->d:La/a/a/a/a/a/aa;

    iput-object v1, p0, La/a/a/a/a/a/ad;->f:La/a/a/a/a/a/af;

    iput-object v1, p0, La/a/a/a/a/a/ad;->g:Ljava/lang/Thread;

    sget-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    new-instance v0, La/a/a/a/a/a/b/af;

    invoke-direct {v0, p4}, La/a/a/a/a/a/b/af;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/ad;->e:La/a/a/a/a/a/b/af;

    iput-object p1, p0, La/a/a/a/a/a/ad;->d:La/a/a/a/a/a/aa;

    iput-object p2, p0, La/a/a/a/a/a/ad;->c:La/a/a/a/a/a/ab;

    iput-object p3, p0, La/a/a/a/a/a/ad;->f:La/a/a/a/a/a/af;

    iget-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    invoke-virtual {p1}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/ad;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    iget-boolean v0, p0, La/a/a/a/a/a/ad;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ad;->a:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, La/a/a/a/a/a/ad;->g:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ad;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/ad;->g:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    iget-object v1, p0, La/a/a/a/a/a/ad;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ad;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ad;->a:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/ad;->g:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/ad;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

.method public run()V
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-boolean v0, p0, La/a/a/a/a/a/ad;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ad;->e:La/a/a/a/a/a/b/af;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ad;->e:La/a/a/a/a/a/b/af;

    invoke-virtual {v0}, La/a/a/a/a/a/b/af;->a()La/a/a/a/a/a/b/au;

    move-result-object v0

    instance-of v2, v0, La/a/a/a/a/a/b/ab;

    if-eqz v2, :cond_4

    iget-object v2, p0, La/a/a/a/a/a/ad;->f:La/a/a/a/a/a/af;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/af;->a(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    move-result-object v1

    if-eqz v1, :cond_2

    monitor-enter v1
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, La/a/a/a/a/a/ad;->c:La/a/a/a/a/a/ab;

    check-cast v0, La/a/a/a/a/a/b/ab;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/ab;->a(La/a/a/a/a/a/b/ab;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch La/a/a/a/a/ap; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    iget-object v2, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    iput-boolean v5, p0, La/a/a/a/a/a/ad;->a:Z

    iget-object v2, p0, La/a/a/a/a/a/ad;->d:La/a/a/a/a/a/aa;

    invoke-virtual {v2, v0, v1}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v0, La/a/a/a/a/ap;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, La/a/a/a/a/ap;-><init>(I)V

    throw v0
    :try_end_3
    .catch La/a/a/a/a/ap; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    iget-object v2, p0, La/a/a/a/a/a/ad;->i:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ad;->h:Ljava/lang/String;

    iput-boolean v5, p0, La/a/a/a/a/a/ad;->a:Z

    iget-object v2, p0, La/a/a/a/a/a/ad;->d:La/a/a/a/a/a/aa;

    invoke-virtual {v2}, La/a/a/a/a/a/aa;->c()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/a/a/a/a/ad;->d:La/a/a/a/a/a/aa;

    new-instance v3, La/a/a/a/a/ap;

    const/16 v4, 0x7d6d

    invoke-direct {v3, v4, v1}, La/a/a/a/a/ap;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v2, v0, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    :try_start_4
    iget-object v2, p0, La/a/a/a/a/a/ad;->c:La/a/a/a/a/a/ab;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/ab;->b(La/a/a/a/a/a/b/au;)V
    :try_end_4
    .catch La/a/a/a/a/ap; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
