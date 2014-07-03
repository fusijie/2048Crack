.class final Lcom/a/a/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/ax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/b/ax",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ac;


# direct methods
.method constructor <init>(Lcom/a/a/b/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/af;->a:Lcom/a/a/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/b/at;

    invoke-direct {v0}, Lcom/a/a/b/at;-><init>()V

    return-object v0
.end method
