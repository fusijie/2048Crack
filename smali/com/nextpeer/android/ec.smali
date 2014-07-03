.class final Lcom/nextpeer/android/ec;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eb;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    iput-object p2, p0, Lcom/nextpeer/android/ec;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Updated avatar successfully"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, v0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/hk;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ec;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb;)V

    iget-object v0, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->b(Lcom/nextpeer/android/eb;)V

    iget-object v0, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    invoke-virtual {v0}, Lcom/nextpeer/android/eb;->dismiss()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed while updating avatar with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb;)V

    iget-object v0, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->c(Lcom/nextpeer/android/eb;)V

    iget-object v0, p0, Lcom/nextpeer/android/ec;->a:Lcom/nextpeer/android/eb;

    invoke-static {v0}, Lcom/nextpeer/android/eb;->d(Lcom/nextpeer/android/eb;)V

    return-void
.end method
