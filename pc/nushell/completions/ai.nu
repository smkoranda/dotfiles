  def "nu-complete ai completions" [] {
    [ "bash" "zsh" "fish" "powershell" "nushell" ]
  }

  def "nu-complete ai model" [] {
    ^ai --list-models |
    | lines 
    | parse "{value}" 
  }

  def "nu-complete ai role" [] {
    ^ai --list-roles |
    | lines 
    | parse "{value}" 
  }

  def "nu-complete ai session" [] {
    ^ai --list-sessions |
    | lines 
    | parse "{value}" 
  }

  def "nu-complete ai agent" [] {
    ^ai --list-agents |
    | lines 
    | parse "{value}" 
  }

  def "nu-complete ai rag" [] {
    ^ai --list-rags |
    | lines 
    | parse "{value}" 
  }

  def "nu-complete ai macro" [] {
    ^ai --list-macros |
    | lines 
    | parse "{value}" 
  }

  export extern main [
    --model(-m): string@"nu-complete ai model"      # Select a LLM model
    --prompt                                            # Use the system prompt
    --role(-r): string@"nu-complete ai role"        # Select a role
    --session(-s): string@"nu-complete ai session"  # Start or join a session
    --empty-session                                     # Ensure the session is empty
    --save-session                                      # Ensure the new conversation is saved to the session
    --agent(-a): string@"nu-complete ai agent"      # Start a agent
    --agent-variable                                    # Set agent variables
    --rag: string@"nu-complete ai rag"              # Start a RAG
    --rebuild-rag                                       # Rebuild the RAG to sync document changes
    --macro: string@"nu-complete ai macro"          # Execute a macro
    --serve                                             # Serve the LLM API and WebAPP
    --execute(-e)                                       # Execute commands in natural language
    --code(-c)                                          # Output code only
    --file(-f): string                                  # Include files, directories, or URLs
    --no-stream(-S)                                     # Turn off stream mode
    --dry-run                                           # Display the message without sending it
    --info                                              # Display information
    --sync-models                                       # Sync models updates
    --list-models                                       # List all available chat models
    --list-roles                                        # List all roles
    --list-sessions                                     # List all sessions
    --list-agents                                       # List all agents
    --list-rags                                         # List all RAGs
    --list-macros                                       # List all macros
    ...text: string                                     # Input text
    --help(-h)                                          # Print help
    --version(-V)                                       # Print version
  ]
