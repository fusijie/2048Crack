.class final Lcom/a/a/b/a/as;
.super Lcom/a/a/bj;


# annotations
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
.field private final a:Lcom/a/a/ak;

.field private final b:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/a/a/ak;Lcom/a/a/bj;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ak;",
            "Lcom/a/a/bj",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/as;->a:Lcom/a/a/ak;

    iput-object p2, p0, Lcom/a/a/b/a/as;->b:Lcom/a/a/bj;

    iput-object p3, p0, Lcom/a/a/b/a/as;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/aa;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/a/as;->b:Lcom/a/a/bj;

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/ad;",
            "TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/a/a/b/a/as;->b:Lcom/a/a/bj;

    iget-object v0, p0, Lcom/a/a/b/a/as;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/a/a/b/a/as;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/a/a/b/a/as;->a:Lcom/a/a/ak;

    invoke-static {v0}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    instance-of v1, v0, Lcom/a/a/b/a/am$aa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/a/a/b/a/as;->b:Lcom/a/a/bj;

    instance-of v1, v1, Lcom/a/a/b/a/am$aa;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/a/a/b/a/as;->b:Lcom/a/a/bj;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
