.class final Lcom/a/a/b/a/an;
.super Lcom/a/a/b/a/am$ab;


# instance fields
.field final a:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/a/a/b/a/am;

.field private final synthetic f:Ljava/lang/reflect/Field;

.field private final synthetic g:Lcom/a/a/ak;

.field private final synthetic h:Lcom/a/a/c/aa;

.field private final synthetic i:Z


# direct methods
.method constructor <init>(Lcom/a/a/b/a/am;Ljava/lang/String;ZZLcom/a/a/ak;Lcom/a/a/c/aa;Ljava/lang/reflect/Field;Z)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/b/a/an;->b:Lcom/a/a/b/a/am;

    iput-object p5, p0, Lcom/a/a/b/a/an;->g:Lcom/a/a/ak;

    iput-object p6, p0, Lcom/a/a/b/a/an;->h:Lcom/a/a/c/aa;

    iput-object p7, p0, Lcom/a/a/b/a/an;->f:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/a/a/b/a/an;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/a/a/b/a/am$ab;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p5, p6}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a/an;->a:Lcom/a/a/bj;

    return-void
.end method


# virtual methods
.method final a(Lcom/a/a/d/aa;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/a/an;->a:Lcom/a/a/bj;

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/a/a/b/a/an;->i:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/a/an;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/a/a/b/a/an;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/a/as;

    iget-object v2, p0, Lcom/a/a/b/a/an;->g:Lcom/a/a/ak;

    iget-object v3, p0, Lcom/a/a/b/a/an;->a:Lcom/a/a/bj;

    iget-object v4, p0, Lcom/a/a/b/a/an;->h:Lcom/a/a/c/aa;

    invoke-virtual {v4}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/a/a/b/a/as;-><init>(Lcom/a/a/ak;Lcom/a/a/bj;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    return-void
.end method
