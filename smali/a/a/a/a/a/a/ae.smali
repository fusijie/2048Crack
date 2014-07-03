.class public La/a/a/a/a/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:La/a/a/a/a/a/ab;

.field private d:La/a/a/a/a/a/b/ag;

.field private e:La/a/a/a/a/a/aa;

.field private f:La/a/a/a/a/a/af;

.field private g:Ljava/lang/Thread;

.field private i:La/a/a/a/a/b/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(La/a/a/a/a/a/aa;La/a/a/a/a/a/ab;La/a/a/a/a/a/af;Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ae;->b:Ljava/lang/Object;

    iput-object v1, p0, La/a/a/a/a/a/ae;->c:La/a/a/a/a/a/ab;

    iput-object v1, p0, La/a/a/a/a/a/ae;->e:La/a/a/a/a/a/aa;

    iput-object v1, p0, La/a/a/a/a/a/ae;->f:La/a/a/a/a/a/af;

    iput-object v1, p0, La/a/a/a/a/a/ae;->g:Ljava/lang/Thread;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    new-instance v0, La/a/a/a/a/a/b/ag;

    invoke-direct {v0, p4}, La/a/a/a/a/a/b/ag;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/ae;->d:La/a/a/a/a/a/b/ag;

    iput-object p1, p0, La/a/a/a/a/a/ae;->e:La/a/a/a/a/a/aa;

    iput-object p2, p0, La/a/a/a/a/a/ae;->c:La/a/a/a/a/a/ab;

    iput-object p3, p0, La/a/a/a/a/a/ae;->f:La/a/a/a/a/a/af;

    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    invoke-virtual {p1}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    instance-of v0, p1, La/a/a/a/a/ap;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/a/ap;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, La/a/a/a/a/ap;-><init>(ILjava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    iget-object v0, p0, La/a/a/a/a/a/ae;->e:La/a/a/a/a/a/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    return-void

    :cond_0
    check-cast p1, La/a/a/a/a/ap;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/ae;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    iget-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, La/a/a/a/a/a/ae;->g:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ae;->c:La/a/a/a/a/a/ab;

    invoke-virtual {v0}, La/a/a/a/a/a/ab;->c()V

    iget-object v0, p0, La/a/a/a/a/a/ae;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, La/a/a/a/a/a/ae;->g:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    iget-object v1, p0, La/a/a/a/a/a/ae;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/ae;->g:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/ae;->g:Ljava/lang/Thread;

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
    .locals 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ae;->d:La/a/a/a/a/a/b/ag;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ae;->c:La/a/a/a/a/a/ab;

    invoke-virtual {v0}, La/a/a/a/a/a/ab;->a()La/a/a/a/a/a/b/au;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, La/a/a/a/a/a/b/au;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    instance-of v0, v1, La/a/a/a/a/a/b/ab;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/ae;->d:La/a/a/a/a/a/b/ag;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/b/ag;->a(La/a/a/a/a/a/b/au;)V

    iget-object v0, p0, La/a/a/a/a/a/ae;->d:La/a/a/a/a/a/b/ag;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ag;->flush()V
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, La/a/a/a/a/a/ae;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ae;->f:La/a/a/a/a/a/af;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-enter v2
    :try_end_1
    .catch La/a/a/a/a/ap; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, La/a/a/a/a/a/ae;->d:La/a/a/a/a/a/b/ag;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/b/ag;->a(La/a/a/a/a/a/b/au;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/ae;->d:La/a/a/a/a/a/b/ag;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ag;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :try_start_4
    iget-object v0, p0, La/a/a/a/a/a/ae;->c:La/a/a/a/a/a/ab;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/ab;->a(La/a/a/a/a/a/b/au;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catch La/a/a/a/a/ap; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, La/a/a/a/a/a/ae;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    instance-of v3, v1, La/a/a/a/a/a/b/ae;

    if-nez v3, :cond_4

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :try_start_7
    iget-object v0, p0, La/a/a/a/a/a/ae;->i:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ae;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ae;->a:Z
    :try_end_7
    .catch La/a/a/a/a/ap; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method
