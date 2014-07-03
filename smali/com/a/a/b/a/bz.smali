.class final Lcom/a/a/b/a/bz;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/bj",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/ac;->i:Lcom/a/a/d/ac;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/aa;->k()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Lcom/a/a/d/ad;->a(Ljava/lang/Number;)Lcom/a/a/d/ad;

    return-void
.end method
