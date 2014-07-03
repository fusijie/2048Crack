.class final Lcom/a/a/bi;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/bi$aa;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/bj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/au",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/ak;

.field private final d:Lcom/a/a/c/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/aa",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/bk;

.field private f:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/a/a/bd;Lcom/a/a/au;Lcom/a/a/ak;Lcom/a/a/c/aa;Lcom/a/a/bk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/bd",
            "<TT;>;",
            "Lcom/a/a/au",
            "<TT;>;",
            "Lcom/a/a/ak;",
            "Lcom/a/a/c/aa",
            "<TT;>;",
            "Lcom/a/a/bk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    iput-object p1, p0, Lcom/a/a/bi;->a:Lcom/a/a/bd;

    iput-object p2, p0, Lcom/a/a/bi;->b:Lcom/a/a/au;

    iput-object p3, p0, Lcom/a/a/bi;->c:Lcom/a/a/ak;

    iput-object p4, p0, Lcom/a/a/bi;->d:Lcom/a/a/c/aa;

    iput-object p5, p0, Lcom/a/a/bi;->e:Lcom/a/a/bk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/bd;Lcom/a/a/au;Lcom/a/a/ak;Lcom/a/a/c/aa;Lcom/a/a/bk;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/a/a/bi;-><init>(Lcom/a/a/bd;Lcom/a/a/au;Lcom/a/a/ak;Lcom/a/a/c/aa;Lcom/a/a/bk;)V

    return-void
.end method

.method private a()Lcom/a/a/bj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/bi;->f:Lcom/a/a/bj;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/bi;->c:Lcom/a/a/ak;

    iget-object v1, p0, Lcom/a/a/bi;->e:Lcom/a/a/bk;

    iget-object v2, p0, Lcom/a/a/bi;->d:Lcom/a/a/c/aa;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/ak;->a(Lcom/a/a/bk;Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/bi;->f:Lcom/a/a/bj;

    goto :goto_0
.end method

.method public static a(Lcom/a/a/c/aa;Ljava/lang/Object;)Lcom/a/a/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/aa",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/bk;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/a/a/bi$aa;

    invoke-direct {v0, p1, p0, v1, v1}, Lcom/a/a/bi$aa;-><init>(Ljava/lang/Object;Lcom/a/a/c/aa;ZB)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/aa;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/bi;->b:Lcom/a/a/au;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/bi;->a()Lcom/a/a/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/a/a/b/az;->a(Lcom/a/a/d/aa;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/a/bi;->b:Lcom/a/a/au;

    iget-object v2, p0, Lcom/a/a/bi;->d:Lcom/a/a/c/aa;

    invoke-virtual {v2}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/bi;->c:Lcom/a/a/ak;

    iget-object v3, v3, Lcom/a/a/ak;->a:Lcom/a/a/at;

    invoke-interface {v1, v0, v2}, Lcom/a/a/au;->a(Lcom/a/a/av;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/ad;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/bi;->a:Lcom/a/a/bd;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/bi;->a()Lcom/a/a/bj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/bi;->a:Lcom/a/a/bd;

    iget-object v1, p0, Lcom/a/a/bi;->d:Lcom/a/a/c/aa;

    invoke-virtual {v1}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/a/a/bi;->c:Lcom/a/a/ak;

    iget-object v1, v1, Lcom/a/a/ak;->b:Lcom/a/a/bc;

    invoke-interface {v0, p2}, Lcom/a/a/bd;->a(Ljava/lang/Object;)Lcom/a/a/av;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/b/az;->a(Lcom/a/a/av;Lcom/a/a/d/ad;)V

    goto :goto_0
.end method
