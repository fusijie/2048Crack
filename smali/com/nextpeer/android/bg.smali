.class final Lcom/nextpeer/android/bg;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/bd;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/nextpeer/android/bd;I)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/bg;->a:Lcom/nextpeer/android/bd;

    iput p2, p0, Lcom/nextpeer/android/bg;->b:I

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Forfeit match successfully"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/bg;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->d(Lcom/nextpeer/android/bd;)V

    iget-object v0, p0, Lcom/nextpeer/android/bg;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->f(Lcom/nextpeer/android/bd;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/bg;->b:I

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hl;->b(I)V

    iget-object v0, p0, Lcom/nextpeer/android/bg;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->g(Lcom/nextpeer/android/bd;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forfeit match failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/bg;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->d(Lcom/nextpeer/android/bd;)V

    iget-object v0, p0, Lcom/nextpeer/android/bg;->a:Lcom/nextpeer/android/bd;

    invoke-static {v0}, Lcom/nextpeer/android/bd;->f(Lcom/nextpeer/android/bd;)V

    return-void
.end method
