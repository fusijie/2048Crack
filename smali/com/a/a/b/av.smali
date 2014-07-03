.class final Lcom/a/a/b/av;
.super Lcom/a/a/b/at$ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/at",
        "<TK;TV;>.ac<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/at$aa;


# direct methods
.method constructor <init>(Lcom/a/a/b/at$aa;Lcom/a/a/b/at;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/b/av;->a:Lcom/a/a/b/at$aa;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/a/a/b/at$ac;-><init>(Lcom/a/a/b/at;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/b/av;->a()Lcom/a/a/b/at$ad;

    move-result-object v0

    return-object v0
.end method
