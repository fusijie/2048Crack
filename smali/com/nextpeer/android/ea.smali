.class final Lcom/nextpeer/android/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dz;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ea;->a:Lcom/nextpeer/android/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ea;->a:Lcom/nextpeer/android/dz;

    invoke-static {v0}, Lcom/nextpeer/android/dz;->a(Lcom/nextpeer/android/dz;)Lcom/nextpeer/android/dz$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ea;->a:Lcom/nextpeer/android/dz;

    invoke-static {v0}, Lcom/nextpeer/android/dz;->a(Lcom/nextpeer/android/dz;)Lcom/nextpeer/android/dz$aa;

    iget-object v0, p0, Lcom/nextpeer/android/ea;->a:Lcom/nextpeer/android/dz;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ea;->a:Lcom/nextpeer/android/dz;

    invoke-virtual {v0}, Lcom/nextpeer/android/dz;->dismiss()V

    return-void
.end method
