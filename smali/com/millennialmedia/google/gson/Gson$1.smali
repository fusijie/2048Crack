.class Lcom/millennialmedia/google/gson/Gson$1;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/millennialmedia/google/gson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/millennialmedia/google/gson/Gson$1;->this$0:Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$1;->this$0:Lcom/millennialmedia/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
