.class public La/a/a/a/a/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final b:Ljava/lang/String;

.field private static d:I


# instance fields
.field public a:Z

.field c:La/a/a/a/a/b/ab;

.field private e:La/a/a/a/a/af;

.field private f:La/a/a/a/a/a/aa;

.field private g:Ljava/util/Vector;

.field private h:Ljava/util/Vector;

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Thread;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:La/a/a/a/a/a/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, La/a/a/a/a/a/ac;->d:I

    const-class v0, La/a/a/a/a/a/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(La/a/a/a/a/a/aa;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    iput-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ac;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    iput-object p1, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    new-instance v0, Ljava/util/Vector;

    sget v1, La/a/a/a/a/a/ac;->d:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    sget v1, La/a/a/a/a/a/ac;->d:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    invoke-virtual {p1}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    return-void
.end method

.method private b(La/a/a/a/a/an;)V
    .locals 5

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->e()V

    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->k()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    if-eqz v1, :cond_0

    instance-of v1, p1, La/a/a/a/a/aj;

    if-eqz v1, :cond_0

    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    move-object v0, p1

    check-cast v0, La/a/a/a/a/aj;

    move-object v1, v0

    invoke-interface {v2, v1}, La/a/a/a/a/af;->deliveryComplete(La/a/a/a/a/ac;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->d()La/a/a/a/a/aa;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v2}, La/a/a/a/a/a/ap;->a()La/a/a/a/a/ap;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v4}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1}, La/a/a/a/a/aa;->a()V

    :cond_1
    :goto_0
    instance-of v1, p1, La/a/a/a/a/aj;

    if-eqz v1, :cond_2

    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->l()V

    :cond_2
    iget-object v1, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, La/a/a/a/a/a/ac;->n:La/a/a/a/a/a/ab;

    invoke-virtual {v1, p1}, La/a/a/a/a/a/ab;->a(La/a/a/a/a/an;)V

    :cond_3
    monitor-exit p1

    return-void

    :cond_4
    iget-object v2, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v4}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v2, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v2}, La/a/a/a/a/a/ap;->a()La/a/a/a/a/ap;

    move-result-object v2

    invoke-interface {v1, v2}, La/a/a/a/a/aa;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/ac;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, La/a/a/a/a/a/ac;->k:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v2, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/ac;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, La/a/a/a/a/a/ac;->k:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(La/a/a/a/a/a/ab;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ac;->n:La/a/a/a/a/a/ab;

    return-void
.end method

.method public final a(La/a/a/a/a/a/b/ao;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v2, La/a/a/a/a/a/ac;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(La/a/a/a/a/af;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    return-void
.end method

.method public final a(La/a/a/a/a/an;)V
    .locals 4

    iget-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, La/a/a/a/a/a/ac;->b(La/a/a/a/a/an;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "problem in asyncopcomplete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    const/4 v2, 0x0

    new-instance v3, La/a/a/a/a/ap;

    invoke-direct {v3, v0}, La/a/a/a/a/ap;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    goto :goto_0
.end method

.method public final a(La/a/a/a/a/ap;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    invoke-interface {v0, p1}, La/a/a/a/a/af;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, La/a/a/a/a/a/ac;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/ac;->k:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/ac;->k:Ljava/lang/Thread;

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

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    iget-object v1, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ac;->k:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    iget-object v2, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ac;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    invoke-direct {p0, v0}, La/a/a/a/a/a/ac;->b(La/a/a/a/a/an;)V

    iget-object v0, p0, La/a/a/a/a/a/ac;->h:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/ao;

    iget-object v1, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->i()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    iget-object v2, p0, La/a/a/a/a/a/ac;->e:La/a/a/a/a/af;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v3

    invoke-interface {v2, v1, v3}, La/a/a/a/a/af;->messageArrived(Ljava/lang/String;La/a/a/a/a/ak;)V

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/ak;->d()I

    move-result v1

    if-ne v1, v7, :cond_6

    iget-object v1, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    new-instance v2, La/a/a/a/a/a/b/ak;

    invoke-direct {v2, v0}, La/a/a/a/a/a/b/ak;-><init>(La/a/a/a/a/a/b/ao;)V

    new-instance v0, La/a/a/a/a/an;

    iget-object v3, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    invoke-virtual {v3}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v3

    invoke-interface {v3}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, La/a/a/a/a/an;-><init>(B)V

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    :cond_3
    :goto_2
    iget-object v0, p0, La/a/a/a/a/a/ac;->g:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_4
    iget-boolean v0, p0, La/a/a/a/a/a/ac;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/ac;->n:La/a/a/a/a/a/ab;

    invoke-virtual {v0}, La/a/a/a/a/a/ab;->b()Z

    :cond_5
    iget-object v1, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ac;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/ac;->c:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ac;->b:Ljava/lang/String;

    iput-boolean v6, p0, La/a/a/a/a/a/ac;->a:Z

    iget-object v1, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    const/4 v2, 0x0

    new-instance v3, La/a/a/a/a/ap;

    invoke-direct {v3, v0}, La/a/a/a/a/ap;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_6
    :try_start_6
    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/ak;->d()I

    move-result v1

    if-ne v1, v8, :cond_3

    iget-object v1, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/b/ao;)V

    new-instance v1, La/a/a/a/a/a/b/al;

    invoke-direct {v1, v0}, La/a/a/a/a/a/b/al;-><init>(La/a/a/a/a/a/b/ao;)V

    iget-object v0, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    new-instance v2, La/a/a/a/a/an;

    iget-object v3, p0, La/a/a/a/a/a/ac;->f:La/a/a/a/a/a/aa;

    invoke-virtual {v3}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v3

    invoke-interface {v3}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, La/a/a/a/a/an;-><init>(B)V

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2
.end method
