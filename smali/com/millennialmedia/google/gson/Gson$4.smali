.class Lcom/millennialmedia/google/gson/Gson$4;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/google/gson/Gson;->floatAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/millennialmedia/google/gson/Gson;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/millennialmedia/google/gson/Gson$4;->this$0:Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Float;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/Gson$4;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p2, :cond_0

    .line 344
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 348
    .local v0, floatValue:F
    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson$4;->this$0:Lcom/millennialmedia/google/gson/Gson;

    float-to-double v2, v0

    #calls: Lcom/millennialmedia/google/gson/Gson;->checkValidFloatingPoint(D)V
    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/Gson;->access$000(Lcom/millennialmedia/google/gson/Gson;D)V

    .line 349
    invoke-virtual {p1, p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson$4;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
