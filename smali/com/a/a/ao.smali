.class final Lcom/a/a/ao;
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


# instance fields
.field final synthetic a:Lcom/a/a/ak;


# direct methods
.method constructor <init>(Lcom/a/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/ao;->a:Lcom/a/a/ak;

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

.method public final synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/a/a/ao;->a:Lcom/a/a/ak;

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/a/a/ak;->a(D)V

    invoke-virtual {p1, p2}, Lcom/a/a/d/ad;->a(Ljava/lang/Number;)Lcom/a/a/d/ad;

    goto :goto_0
.end method
