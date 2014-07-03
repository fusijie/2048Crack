.class final Lcom/a/a/b/ah;
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

.field private final synthetic b:Lcom/a/a/ar;

.field private final synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/a/a/b/ac;Lcom/a/a/ar;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/ah;->a:Lcom/a/a/b/ac;

    iput-object p2, p0, Lcom/a/a/b/ah;->b:Lcom/a/a/ar;

    iput-object p3, p0, Lcom/a/a/b/ah;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/ah;->b:Lcom/a/a/ar;

    iget-object v1, p0, Lcom/a/a/b/ah;->c:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lcom/a/a/ar;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
