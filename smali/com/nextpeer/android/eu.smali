.class final Lcom/nextpeer/android/eu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/fu$aa;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eo;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/eu;->a:Lcom/nextpeer/android/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/eu;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->d(Lcom/nextpeer/android/eo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/eu;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->e(Lcom/nextpeer/android/eo;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/eu;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->f(Lcom/nextpeer/android/eo;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/nextpeer/android/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
