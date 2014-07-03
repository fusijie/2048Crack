.class final Lcom/nextpeer/android/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eo;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/et;->a:Lcom/nextpeer/android/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/et;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->b(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/fu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/et;->a:Lcom/nextpeer/android/eo;

    iget-object v1, p0, Lcom/nextpeer/android/et;->a:Lcom/nextpeer/android/eo;

    invoke-static {v1}, Lcom/nextpeer/android/eo;->c(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/fu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;Lcom/nextpeer/android/fu;)V

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/et;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->b(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/fu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/fu;->b(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/et;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->b(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/fu;->b()V

    goto :goto_0
.end method
