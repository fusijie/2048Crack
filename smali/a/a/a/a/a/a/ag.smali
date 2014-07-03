.class public final La/a/a/a/a/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/aa;


# instance fields
.field private a:La/a/a/a/a/ah;

.field private b:La/a/a/a/a/ae;

.field private c:La/a/a/a/a/a/aa;

.field private d:La/a/a/a/a/ai;

.field private e:La/a/a/a/a/an;

.field private f:Ljava/lang/Object;

.field private g:La/a/a/a/a/aa;


# direct methods
.method public constructor <init>(La/a/a/a/a/ae;La/a/a/a/a/ah;La/a/a/a/a/a/aa;La/a/a/a/a/ai;La/a/a/a/a/an;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a/a/a/a/a/ag;->a:La/a/a/a/a/ah;

    iput-object p1, p0, La/a/a/a/a/a/ag;->b:La/a/a/a/a/ae;

    iput-object p3, p0, La/a/a/a/a/a/ag;->c:La/a/a/a/a/a/aa;

    iput-object p4, p0, La/a/a/a/a/a/ag;->d:La/a/a/a/a/ai;

    iput-object p5, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iput-object v0, p0, La/a/a/a/a/a/ag;->f:Ljava/lang/Object;

    iput-object v0, p0, La/a/a/a/a/a/ag;->g:La/a/a/a/a/aa;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, v1, v1}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    iget-object v0, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0}, La/a/a/a/a/a/ap;->e()V

    iget-object v0, p0, La/a/a/a/a/a/ag;->g:La/a/a/a/a/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iget-object v1, p0, La/a/a/a/a/a/ag;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, La/a/a/a/a/an;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/a/a/ag;->g:La/a/a/a/a/aa;

    iget-object v1, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    invoke-interface {v0}, La/a/a/a/a/aa;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    move-object v1, p1

    :goto_0
    iget-object v0, p0, La/a/a/a/a/a/ag;->c:La/a/a/a/a/a/aa;

    invoke-virtual {v0}, La/a/a/a/a/a/aa;->f()[La/a/a/a/a/a/am;

    move-result-object v0

    array-length v0, v0

    iget-object v2, p0, La/a/a/a/a/a/ag;->c:La/a/a/a/a/a/aa;

    invoke-virtual {v2}, La/a/a/a/a/a/aa;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ag;->c:La/a/a/a/a/a/aa;

    invoke-virtual {v0, v2}, La/a/a/a/a/a/aa;->a(I)V

    :try_start_0
    invoke-virtual {p0}, La/a/a/a/a/a/ag;->b()V
    :try_end_0
    .catch La/a/a/a/a/aq; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v0, v1, La/a/a/a/a/ap;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, La/a/a/a/a/ap;

    :goto_2
    iget-object v2, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iget-object v2, v2, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    iget-object v0, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0}, La/a/a/a/a/a/ap;->e()V

    iget-object v0, p0, La/a/a/a/a/a/ag;->g:La/a/a/a/a/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    iget-object v2, p0, La/a/a/a/a/a/ag;->f:Ljava/lang/Object;

    invoke-virtual {v0, v2}, La/a/a/a/a/an;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/a/a/ag;->g:La/a/a/a/a/aa;

    iget-object v2, p0, La/a/a/a/a/a/ag;->e:La/a/a/a/a/an;

    invoke-interface {v0, v1}, La/a/a/a/a/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    new-instance v0, La/a/a/a/a/ap;

    invoke-direct {v0, v1}, La/a/a/a/a/ap;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    new-instance v0, La/a/a/a/a/an;

    iget-object v1, p0, La/a/a/a/a/a/ag;->b:La/a/a/a/a/ae;

    invoke-virtual {v1}, La/a/a/a/a/ae;->a()Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/an;-><init>(B)V

    invoke-virtual {v0, p0}, La/a/a/a/a/an;->a(La/a/a/a/a/aa;)V

    invoke-virtual {v0, p0}, La/a/a/a/a/an;->a(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/ag;->a:La/a/a/a/a/ah;

    iget-object v2, p0, La/a/a/a/a/a/ag;->b:La/a/a/a/a/ae;

    invoke-virtual {v2}, La/a/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/a/a/a/a/a/ag;->b:La/a/a/a/a/ae;

    invoke-virtual {v3}, La/a/a/a/a/ae;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, La/a/a/a/a/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/a/ag;->d:La/a/a/a/a/ai;

    invoke-virtual {v1}, La/a/a/a/a/ai;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/ag;->a:La/a/a/a/a/ah;

    invoke-interface {v1}, La/a/a/a/a/ah;->c()V

    :cond_0
    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/ag;->c:La/a/a/a/a/a/aa;

    iget-object v2, p0, La/a/a/a/a/a/ag;->d:La/a/a/a/a/ai;

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/ai;La/a/a/a/a/an;)V
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, La/a/a/a/a/a/ag;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
