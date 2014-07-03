.class final Lcom/nextpeer/android/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/af$ab;

.field private final synthetic b:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/af$ab;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ai;->a:Lcom/nextpeer/android/af$ab;

    iput-object p2, p0, Lcom/nextpeer/android/ai;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/ai;->a:Lcom/nextpeer/android/af$ab;

    iget-object v0, p0, Lcom/nextpeer/android/ai;->b:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/af$ab;->a(Ljava/util/Map;)V

    return-void
.end method
