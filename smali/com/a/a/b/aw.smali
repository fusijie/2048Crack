.class final Lcom/a/a/b/aw;
.super Lcom/a/a/b/at$ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/at",
        "<TK;TV;>.ac<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/at$ab;


# direct methods
.method constructor <init>(Lcom/a/a/b/at$ab;Lcom/a/a/b/at;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/b/aw;->a:Lcom/a/a/b/at$ab;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/a/a/b/at$ac;-><init>(Lcom/a/a/b/at;B)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/b/aw;->a()Lcom/a/a/b/at$ad;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/b/at$ad;->f:Ljava/lang/Object;

    return-object v0
.end method
