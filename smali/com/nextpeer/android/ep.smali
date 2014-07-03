.class final Lcom/nextpeer/android/ep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eo;

.field private final synthetic b:Lcom/nextpeer/android/hl$ad$aa;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eo;Lcom/nextpeer/android/hl$ad$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ep;->a:Lcom/nextpeer/android/eo;

    iput-object p2, p0, Lcom/nextpeer/android/ep;->b:Lcom/nextpeer/android/hl$ad$aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/ep;->b:Lcom/nextpeer/android/hl$ad$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ad$aa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/gx$aa;

    iget-object v1, p0, Lcom/nextpeer/android/ep;->a:Lcom/nextpeer/android/eo;

    invoke-virtual {v1}, Lcom/nextpeer/android/eo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/ep;->b:Lcom/nextpeer/android/hl$ad$aa;

    invoke-virtual {v2}, Lcom/nextpeer/android/hl$ad$aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/gx$aa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/gx$aa;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->show()V

    return-void
.end method
