.class final Lcom/nextpeer/android/fy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/fw;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-static {v0}, Lcom/nextpeer/android/fw;->a(Lcom/nextpeer/android/fw;)Lcom/nextpeer/android/fw$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-static {v0}, Lcom/nextpeer/android/fw;->a(Lcom/nextpeer/android/fw;)Lcom/nextpeer/android/fw$aa;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-interface {v0, v1}, Lcom/nextpeer/android/fw$aa;->a(Lcom/nextpeer/android/fw;)V

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-static {v1}, Lcom/nextpeer/android/fw;->b(Lcom/nextpeer/android/fw;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-static {v2}, Lcom/nextpeer/android/fw;->c(Lcom/nextpeer/android/fw;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/fy;->a:Lcom/nextpeer/android/fw;

    invoke-virtual {v0}, Lcom/nextpeer/android/fw;->dismiss()V

    return-void
.end method
