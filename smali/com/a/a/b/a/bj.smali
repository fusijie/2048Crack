.class final Lcom/a/a/b/a/bj;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/bj",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/a/bi;

.field private final synthetic b:Lcom/a/a/bj;


# direct methods
.method constructor <init>(Lcom/a/a/b/a/bi;Lcom/a/a/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/a/bj;->a:Lcom/a/a/b/a/bi;

    iput-object p2, p0, Lcom/a/a/b/a/bj;->b:Lcom/a/a/bj;

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/a/a/b/a/bj;->b:Lcom/a/a/bj;

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lcom/a/a/b/a/bj;->b:Lcom/a/a/bj;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    return-void
.end method
