.class final Lcom/a/a/ak$aa;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aa"
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
.field private a:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

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

    iget-object v0, p0, Lcom/a/a/ak$aa;->a:Lcom/a/a/bj;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/ak$aa;->a:Lcom/a/a/bj;

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/bj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/bj",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ak$aa;->a:Lcom/a/a/bj;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/ak$aa;->a:Lcom/a/a/bj;

    return-void
.end method

.method public final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/ad;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/ak$aa;->a:Lcom/a/a/bj;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/ak$aa;->a:Lcom/a/a/bj;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    return-void
.end method
