.class final La/a/a/a/a/a/aa$ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ab"
.end annotation


# instance fields
.field a:Ljava/lang/Thread;

.field b:La/a/a/a/a/a/b/ae;

.field c:J

.field d:La/a/a/a/a/an;

.field final synthetic e:La/a/a/a/a/a/aa;


# direct methods
.method constructor <init>(La/a/a/a/a/a/aa;La/a/a/a/a/a/b/ae;La/a/a/a/a/an;)V
    .locals 2

    iput-object p1, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/aa$ab;->a:Ljava/lang/Thread;

    iput-object p2, p0, La/a/a/a/a/a/aa$ab;->b:La/a/a/a/a/a/b/ae;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, La/a/a/a/a/a/aa$ab;->c:J

    iput-object p3, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MQTT Disc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    invoke-virtual {v2}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v2

    invoke-interface {v2}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/aa$ab;->a:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    iget-object v0, v0, La/a/a/a/a/a/aa;->l:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/aa;->k:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    iget-object v0, v0, La/a/a/a/a/a/aa;->f:La/a/a/a/a/a/ab;

    iget-wide v1, p0, La/a/a/a/a/a/aa$ab;->c:J

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/ab;->b(J)V

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    iget-object v1, p0, La/a/a/a/a/a/aa$ab;->b:La/a/a/a/a/a/b/ae;

    iget-object v2, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0}, La/a/a/a/a/a/ap;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, v3, v3}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    iget-object v1, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    invoke-virtual {v0, v1, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, v3, v3}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    iget-object v0, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    iget-object v1, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    invoke-virtual {v0, v1, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    iget-object v1, v1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1, v3, v3}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    iget-object v1, p0, La/a/a/a/a/a/aa$ab;->e:La/a/a/a/a/a/aa;

    iget-object v2, p0, La/a/a/a/a/a/aa$ab;->d:La/a/a/a/a/an;

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    throw v0
.end method
